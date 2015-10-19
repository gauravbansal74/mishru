<?php class ControllerModuleMerkentInstagram extends Controller {
	private $error = array();
	private $success;
	
	public function index() {
		$this->language->load('module/merkent_instagram');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('merkent_instagram', $this->request->post);
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
			}

			$this->cache->delete('instagram');

			if (!empty($this->request->post['continue'])) {
				$this->success = $this->language->get('text_success');
			} else {
				$this->session->data['success'] = $this->language->get('text_success');
				
				$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
			}
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_layout'] = $this->language->get('text_layout');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_follow'] = $this->language->get('text_follow');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_username'] = $this->language->get('text_username');
		$data['text_hashtag'] = $this->language->get('text_hashtag');
		$data['text_message'] = $this->language->get('text_message');
		$data['text_register_app'] = $this->language->get('text_register_app');

		$data['entry_client_id'] = $this->language->get('entry_client_id');
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_follow'] = $this->language->get('entry_follow');
		$data['entry_type'] = $this->language->get('entry_type');
		$data['entry_username'] = $this->language->get('entry_username');
		$data['entry_hashtag'] = $this->language->get('entry_hashtag');
		$data['entry_col_count'] = $this->language->get('entry_col_count');
		$data['entry_row_count'] = $this->language->get('entry_row_count');
		$data['entry_resolution'] = $this->language->get('entry_resolution');
		$data['entry_status'] = $this->language->get('entry_status');
		
		$data['help_client_id'] = $this->language->get('help_client_id');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_save_continue'] = $this->language->get('button_save_continue');
		$data['button_cancel'] = $this->language->get('button_cancel');
		
		$data['success'] = $this->success;

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

  		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text'  => $this->language->get('text_home'),
			'href'  => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text'  => $this->language->get('text_module'),
			'href'  => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text'  => $this->language->get('heading_title'),
				'href'  => $this->url->link('module/merkent_instagram', 'token=' . $this->session->data['token'], 'SSL')
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text'  => $this->language->get('heading_title'),
				'href'  => $this->url->link('module/merkent_instagram', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
			);
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('module/merkent_instagram', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('module/merkent_instagram', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
		}
		
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		$data['layout'] = $this->url->link('design/layout', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
		}
		
		$fields = array(
			'name',
			'client_id',
			'type',
			'username',
			'row_count',
			'col_count',
			'follow',
			'resolution',
			'status'
		);
		
		foreach ($fields as $field) {
			if (isset($this->request->post[$field])) {
				$data[$field] = $this->request->post[$field];
			} elseif (!empty($module_info[$field])) {
				$data[$field] = $module_info[$field];
			} else {
				$data[$field] = '';
			}

			if (isset($this->error[$field])) {
				$data['error_'.$field] = '<div class="help-block text-danger">'.$this->error[$field].'</div>';
			} else {
				$data['error_'.$field] = '';
			}
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/merkent_instagram.tpl', $data));
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/merkent_instagram')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->request->post['client_id']) {
			$this->error['client_id'] = $this->language->get('error_required');
    	}

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 128)) {
			$this->error['name'] = sprintf($this->language->get('error_chars'), 3, 128);
		}
		
		if ((utf8_strlen($this->request->post['username']) < 3) || (utf8_strlen($this->request->post['username']) > 32)) {
			$this->error['username'] = sprintf($this->language->get('error_chars'), 3, 32);
		} elseif ($this->request->post['type'] == 'username') {
			$user_id = $this->get_data($this->request->post['client_id'], $this->request->post['username']);

			if (!$user_id) {
				$this->error['username'] = $this->language->get('error_username');
			} else {
				$this->request->post['userid'] = $user_id;
			}
		}

		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}

		return !$this->error;
	}
	
	protected function get_data($client_id, $username) {
		$url = 'https://api.instagram.com/v1/users/search?client_id='.$client_id.'&q='.$username.'&count=1';
		
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Accept: application/json'));
		curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 20);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		$json = curl_exec($ch);
		if (false === $json) {
			$this->log->write('Merkent Instagram: '.curl_error($ch));
		}
		curl_close($ch);
		
		$data = json_decode($json, true);
		
		if (!empty($data['data'][0]['id'])) {
			return $data['data'][0]['id'];
		} else {
			return false;
		}
	}
}
