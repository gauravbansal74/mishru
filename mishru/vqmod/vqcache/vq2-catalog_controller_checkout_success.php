<?php
class ControllerCheckoutSuccess extends Controller {
	public function index() {

        // add modifications
        if ( isset( $this->session->data['order_id'] ) && ( !empty( $this->session->data['order_id'] ) ) ) {
          $this->session->data['recent_order_id'] = $this->session->data['order_id'];
        }

        if ( isset( $this->session->data['guest']['firstname'] ) && ( !empty( $this->session->data['guest']['firstname'] ) ) ) {
          $this->session->data['recent_firstname'] = $this->session->data['guest']['firstname'];
        } elseif ( $this->customer->isLogged() ) {
          $this->session->data['recent_firstname'] = $this->customer->getFirstName();
        } else {
          $this->session->data['recent_firstname'] = false;
        }
        // add modifications
        
		$this->load->language('checkout/success');

		$order_id = '0';	
			

		if (isset($this->session->data['order_id'])) {
			$this->cart->clear();

		$order_id = $this->session->data['order_id'];	
			

			// Add to activity log
			$this->load->model('account/activity');

			if ($this->customer->isLogged()) {
				$activity_data = array(
					'customer_id' => $this->customer->getId(),
					'name'        => $this->customer->getFirstName() . ' ' . $this->customer->getLastName(),
					'order_id'    => $this->session->data['order_id']
				);

				$this->model_account_activity->addActivity('order_account', $activity_data);
			} else {
				$activity_data = array(
					'name'     => $this->session->data['guest']['firstname'] . ' ' . $this->session->data['guest']['lastname'],
					'order_id' => $this->session->data['order_id']
				);

				$this->model_account_activity->addActivity('order_guest', $activity_data);
			}

			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['guest']);
			unset($this->session->data['comment']);
			unset($this->session->data['order_id']);
			unset($this->session->data['coupon']);
			unset($this->session->data['reward']);
			unset($this->session->data['voucher']);
			unset($this->session->data['vouchers']);
			unset($this->session->data['totals']);
		}

		
        // add modifications
        // $this->document->setTitle( $this->language->get( 'heading_title' ) );
        // add modifications
        


        // add modifications
        if ( !empty( $this->session->data['recent_order_id'] ) ) {
          $this->document->setTitle( sprintf( $this->language->get( 'heading_title_order' ), $this->session->data['recent_order_id'] ) );
        } else {
          $this->document->setTitle( $this->language->get( 'heading_title' ) );
        }
        
        if ( !empty( $this->session->data['recent_order_id'] ) ) {
          $data['heading_title'] = sprintf( $this->language->get( 'heading_title_order' ), $this->session->data['recent_order_id'] );
        } else {
          $data['heading_title'] = $this->language->get( 'heading_title' );
        }
        // add modifications
        
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_basket'),
			'href' => $this->url->link('checkout/cart')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_checkout'),
			'href' => $this->url->link('checkout/checkout', '', 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_success'),
			'href' => $this->url->link('checkout/success')
		);

		
        // add modifications
        // $data['heading_title'] = $this->language->get( 'heading_title' );
        // add modifications
        

		
        // add modifications
        if ( $this->customer->isLogged() ) {
          if ( !empty( $this->session->data['recent_firstname'] ) ) {
            $data['text_message'] = sprintf( $this->language->get( 'text_customer_ordervs_firstname' ), $this->session->data['recent_firstname'], $this->session->data['recent_order_id'], $this->url->link( 'account/account', '', 'SSL' ), $this->url->link( 'account/order', '', 'SSL' ), $this->url->link( 'account/download', '', 'SSL' ),  $this->url->link( 'information/contact' ) );
          } else {
            $data['text_message'] = sprintf( $this->language->get( 'text_customer_order' ), $this->session->data['recent_order_id'], $this->url->link( 'account/account', '', 'SSL' ), $this->url->link( 'account/order', '', 'SSL' ), $this->url->link( 'account/download', '', 'SSL' ),  $this->url->link( 'information/contact' ) );
          }
        } else {
          if ( !empty( $this->session->data['recent_firstname'] ) ) {
            $data['text_message'] = sprintf( $this->language->get( 'text_guest_order_vs_firstname' ), $this->session->data['recent_firstname'], $this->session->data['recent_order_id'], $this->url->link( 'information/contact' ) );
          } else {
            $data['text_message'] = sprintf( $this->language->get( 'text_guest_order' ), $this->session->data['recent_order_id'], $this->url->link( 'information/contact' ) );
          }
        }
        // add modifications
        





		$data['button_continue'] = $this->language->get('button_continue');

		$data['continue'] = $this->url->link('common/home');

		$this->load->model('account/order');
		$this->load->model('catalog/product');
		$this->load->model('setting/setting');

// if you need to test the page then set a known order number here
		
//		$order_id = 9;

		$order_info = $this->model_account_order->getOrder($order_id);
		
		$store_info = $this->model_setting_setting->getSetting('config', $order_info['store_id']);
				
		if ($store_info) {
			$data['store_name'] = $store_info['config_name'];
			$data['store_address'] = $store_info['config_address'];
			$data['store_emal'] = $store_info['config_email'];
			$data['store_tel'] = $store_info['config_telephone'];
		} else {
			$data['store_name'] = $this->config->get('config_name');
			$data['store_address'] = $this->config->get('config_address');
			$data['store_emal'] = $this->config->get('config_email');
			$data['store_tel'] = $this->config->get('config_telephone');
		}

		if ($order_info) {
			$this->document->setTitle($this->language->get('text_order'));

			$data['text_order_detail'] = $this->language->get('text_order_detail');
			$data['text_invoice_no'] = $this->language->get('text_invoice_no');
			$data['text_order_id'] = $this->language->get('text_order_id');
			$data['text_date_added'] = $this->language->get('text_date_added');
			$data['text_shipping_method'] = $this->language->get('text_shipping_method');
			$data['text_shipping_address'] = $this->language->get('text_shipping_address');
			$data['text_payment_method'] = $this->language->get('text_payment_method');
			$data['text_payment_address'] = $this->language->get('text_payment_address');
			$data['text_history'] = $this->language->get('text_history');
			$data['text_comment'] = $this->language->get('text_comment');

			$data['column_name'] = $this->language->get('column_name');
			$data['column_model'] = $this->language->get('column_model');
			$data['column_quantity'] = $this->language->get('column_quantity');
			$data['column_price'] = $this->language->get('column_price');
			$data['column_total'] = $this->language->get('column_total');
			$data['column_action'] = $this->language->get('column_action');
			$data['column_date_added'] = $this->language->get('column_date_added');
			$data['column_status'] = $this->language->get('column_status');
			$data['column_comment'] = $this->language->get('column_comment');

			$data['button_return'] = $this->language->get('button_return');
			$data['button_reorder'] = $this->language->get('button_reorder');
			$data['button_continue'] = $this->language->get('button_continue');

			if ($order_info['invoice_no']) {
				$data['invoice_no'] = $order_info['invoice_prefix'] . $order_info['invoice_no'];
			} else {
				$data['invoice_no'] = '';
			}

			$data['order_id'] = $order_id;
			$data['date_added'] = date($this->language->get('date_format_short'), strtotime($order_info['date_added']));

			if ($order_info['payment_address_format']) {
				$format = $order_info['payment_address_format'];
			} else {
				$format = '{firstname} {lastname}' . "\n" . '{company}' . "\n" . '{address_1}' . "\n" . '{address_2}' . "\n" . '{city} {postcode}' . "\n" . '{zone}' . "\n" . '{country}';
			}

			$find = array(
				'{firstname}',
				'{lastname}',
				'{company}',
				'{address_1}',
				'{address_2}',
				'{city}',
				'{postcode}',
				'{zone}',
				'{zone_code}',
				'{country}'
			);

			$replace = array(
				'firstname' => $order_info['payment_firstname'],
				'lastname'  => $order_info['payment_lastname'],
				'company'   => $order_info['payment_company'],
				'address_1' => $order_info['payment_address_1'],
				'address_2' => $order_info['payment_address_2'],
				'city'      => $order_info['payment_city'],
				'postcode'  => $order_info['payment_postcode'],
				'zone'      => $order_info['payment_zone'],
				'zone_code' => $order_info['payment_zone_code'],
				'country'   => $order_info['payment_country']
			);

			$data['payment_address'] = str_replace(array("\r\n", "\r", "\n"), '<br />', preg_replace(array("/\s\s+/", "/\r\r+/", "/\n\n+/"), '<br />', trim(str_replace($find, $replace, $format))));

			$data['payment_method'] = $order_info['payment_method'];

			if ($order_info['shipping_address_format']) {
				$format = $order_info['shipping_address_format'];
			} else {
				$format = '{firstname} {lastname}' . "\n" . '{company}' . "\n" . '{address_1}' . "\n" . '{address_2}' . "\n" . '{city} {postcode}' . "\n" . '{zone}' . "\n" . '{country}';
			}

			$find = array(
				'{firstname}',
				'{lastname}',
				'{company}',
				'{address_1}',
				'{address_2}',
				'{city}',
				'{postcode}',
				'{zone}',
				'{zone_code}',
				'{country}'
			);

			$replace = array(
				'firstname' => $order_info['shipping_firstname'],
				'lastname'  => $order_info['shipping_lastname'],
				'company'   => $order_info['shipping_company'],
				'address_1' => $order_info['shipping_address_1'],
				'address_2' => $order_info['shipping_address_2'],
				'city'      => $order_info['shipping_city'],
				'postcode'  => $order_info['shipping_postcode'],
				'zone'      => $order_info['shipping_zone'],
				'zone_code' => $order_info['shipping_zone_code'],
				'country'   => $order_info['shipping_country']
			);

			$data['shipping_address'] = str_replace(array("\r\n", "\r", "\n"), '<br />', preg_replace(array("/\s\s+/", "/\r\r+/", "/\n\n+/"), '<br />', trim(str_replace($find, $replace, $format))));

			$data['shipping_method'] = $order_info['shipping_method'];

			$data['products'] = array();

			$products = $this->model_account_order->getOrderProducts($order_id);

			foreach ($products as $product) {
				$option_data = array();

				$options = $this->model_account_order->getOrderOptions($order_id, $product['order_product_id']);

				foreach ($options as $option) {
					if ($option['type'] != 'file') {
						$value = $option['value'];
					} else {
						$upload_info = $this->model_tool_upload->getUploadByCode($option['value']);

						if ($upload_info) {
							$value = $upload_info['name'];
						} else {
							$value = '';
						}
					}

					$option_data[] = array(
						'name'  => $option['name'],
						'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value)
					);
				}

				$product_info = $this->model_catalog_product->getProduct($product['product_id']);

				if ($product_info) {
					$reorder = $this->url->link('account/order/reorder', 'order_id=' . $order_id . '&order_product_id=' . $product['order_product_id'], 'SSL');
				} else {
					$reorder = '';
				}

				$data['products'][] = array(
					'name'     => $product['name'],
					'model'    => $product['model'],
					'option'   => $option_data,
					'quantity' => $product['quantity'],
					'price'    => $this->currency->format($product['price'] + ($this->config->get('config_tax') ? $product['tax'] : 0), $order_info['currency_code'], $order_info['currency_value']),
					'total'    => $this->currency->format($product['total'] + ($this->config->get('config_tax') ? ($product['tax'] * $product['quantity']) : 0), $order_info['currency_code'], $order_info['currency_value']),
					'reorder'  => $reorder,
					'return'   => $this->url->link('account/return/add', 'order_id=' . $order_info['order_id'] . '&product_id=' . $product['product_id'], 'SSL')
				);
			}

			// Voucher
			$data['vouchers'] = array();

			$vouchers = $this->model_account_order->getOrderVouchers($order_id);

			foreach ($vouchers as $voucher) {
				$data['vouchers'][] = array(
					'description' => $voucher['description'],
					'amount'      => $this->currency->format($voucher['amount'], $order_info['currency_code'], $order_info['currency_value'])
				);
			}

			// Totals
			$data['totals'] = array();

			$totals = $this->model_account_order->getOrderTotals($order_id);

			foreach ($totals as $total) {
				$data['totals'][] = array(
					'title' => $total['title'],
					'text'  => $this->currency->format($total['value'], $order_info['currency_code'], $order_info['currency_value']),
				);
			}

			$data['comment'] = nl2br($order_info['comment']);

			// History
			$data['histories'] = array();

			$results = $this->model_account_order->getOrderHistories($order_id);

			foreach ($results as $result) {
				$data['histories'][] = array(
					'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
					'status'     => $result['status'],
					'comment'    => $result['notify'] ? nl2br($result['comment']) : ''
				);
			}

			$data['continue'] = $this->url->link('account/order', '', 'SSL');
		}
			
			

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/success.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/success.tpl', $data));
		}
	}
}