<?php class ControllerModuleMerkentInstagram extends Controller {
	private $url = 'https://api.instagram.com/v1/';
	
	public function index($setting) {
		$data['name'] = $setting['name'];
		$data['username'] = $setting['username'];
		$data['col_count'] = $setting['col_count'];
		$data['follow'] = $setting['follow'];

		$output = $this->cache->get('instagram.'.trim($setting['username']));

		if (!$output) {
			$output = array();
			
			if (!empty($setting['userid'])) {
				$endpoint = 'users/'.trim($setting['userid']).'/media/recent';
			} else {
				$endpoint = 'tags/'.$setting['username'].'/media/recent';
			}
			
			$count = ($setting['col_count'] * $setting['row_count']);
			
			$results = $this->make_call($endpoint, array(
				'client_id' => $setting['client_id'],
				'count' 	=> $count
			));
			
			if (!empty($results)) {
				foreach (array_slice($results, 0, $count) as $result) {
					$output[] = array(
						'link' 	=> $result['link'],
						'text' 	=> $this->strip_emoji($result['caption']['text']),
						'url' 	=> $result['images'][$setting['resolution']]['url'],
						'w' 	=> $result['images'][$setting['resolution']]['width'],
						'h' 	=> $result['images'][$setting['resolution']]['height']
					);
				}

				$this->cache('instagram.'.trim($setting['username']), $output, 1000);
			}
		}

		$data['results'] = $output;

		if (file_exists(DIR_TEMPLATE.$this->config->get('config_template').'/template/module/merkent_instagram.tpl')) {
			return $this->load->view($this->config->get('config_template').'/template/module/merkent_instagram.tpl', $data);
		} else {
			return $this->load->view('default/template/module/merkent_instagram.tpl', $data);
		}
	}

	protected function make_call($endpoint, $params = array()) {
		$ch = curl_init();
		curl_setopt_array($ch, array(
			CURLOPT_URL => $this->url.$endpoint.'?'.http_build_query($params),
			CURLOPT_HTTPHEADER => array('Accept: application/json'),
			CURLOPT_CONNECTTIMEOUT => 20,
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_SSL_VERIFYPEER => false,
			CURLOPT_SSL_VERIFYHOST => 2
		));
		$response = curl_exec($ch);
		if (false === $response) {
			$this->log->write('Merkent Instagram: '.curl_error($ch));
		}
		curl_close($ch);
		$json = json_decode($response, true);
		if (!empty($json['data'])) {
			return $json['data'];
		} else {
			return false;
		}
	}
	
	protected function strip_emoji($string) {
		$regex = '/([0-9|#][\x{20E3}])|[\x{00ae}|\x{00a9}|\x{203C}|\x{2047}|\x{2048}|\x{2049}|\x{3030}|\x{303D}|\x{2139}|\x{2122}|\x{3297}|\x{3299}][\x{FE00}-\x{FEFF}]?|[\x{2190}-\x{21FF}][\x{FE00}-\x{FEFF}]?|[\x{2300}-\x{23FF}][\x{FE00}-\x{FEFF}]?|[\x{2460}-\x{24FF}][\x{FE00}-\x{FEFF}]?|[\x{25A0}-\x{25FF}][\x{FE00}-\x{FEFF}]?|[\x{2600}-\x{27BF}][\x{FE00}-\x{FEFF}]?|[\x{2900}-\x{297F}][\x{FE00}-\x{FEFF}]?|[\x{2B00}-\x{2BF0}][\x{FE00}-\x{FEFF}]?|[\x{1F000}-\x{1F6FF}][\x{FE00}-\x{FEFF}]?/u';

		return preg_replace($regex, '', $string);
	}
	
	private function cache($key, $value, $expire) {
		$this->cache->delete($key);

		$file = DIR_CACHE.'cache.'.preg_replace('/[^A-Z0-9\._-]/i', '', $key).'.'.(time() + $expire);

		$handle = fopen($file, 'w');

		fwrite($handle, serialize($value));

		fclose($handle);
	}
}

