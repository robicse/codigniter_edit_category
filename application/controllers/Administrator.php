<?php
defined('BASEPATH') OR exit('No direct script access allowed');

	class Administrator extends CI_Controller {

		public function __construct()
		{
			parent:: __construct();
			$admin_id=$this->session->userdata('id');
			
			if($admin_id == NULL)
			{
				redirect('admin','refresh');
			}
		}
		
		public function index()
		{
			$data=array();
			$data['admin_main_content']=$this->load->view('admin/dashbord','',true);
			$this->load->view('admin/admin_master',$data);
		}
		
		public function add_category()
		{
			$data=array();
			$data['admin_main_content']=$this->load->view('admin/add_category','',true);
			$this->load->view('admin/admin_master',$data);
		}
		
		public function save_category()
		{
			$data=array();
			$data['category_name']=$this->input->post('category_name',true);
			$data['category_description']=$this->input->post('category_description',true);
			$data['publication_status']=$this->input->post('publication_status',true);
			$this->administrator_model->save_category_info($data);
			$sdata=array();
			$sdata['message']='Save Category Information Successfully !';
			$this->session->set_userdata($sdata);
			redirect('administrator/add_category');
		}
		
		public function manage_category()
		{
			$data=array();
			$data['all_category']=$this->administrator_model->select_all_category();
			$data['admin_main_content']=$this->load->view('admin/category_grid',$data,true);
			$this->load->view('admin/admin_master',$data);
		}
		
		public function unpublished_category($category_id)
		{
			$this->administrator_model->unpublished_category_by_id($category_id);
			redirect('administrator/manage_category');
		}
		
		public function delete_category($category_id)
		{
			$this->administrator_model->delete_category_by_id($category_id);
			redirect('administrator/manage_category');
		}
		
		public function edit_category($category_id)
		{
			$data=array();
			$data['category_info']=$this->administrator_model->select_category_by_id($category_id);
			$data['admin_main_content']=$this->load->view('admin/edit_category',$data,true);
			$this->load->view('admin/admin_master',$data);
		}
		public function update_category()
		{
			$data=array();
			$data['category_name']=$this->input->post('category_name',true);
			$data['category_description']=$this->input->post('category_description',true);
			$category_id=$this->input->post('category_id',true);
			$this->administrator_model->update_category_info($category_id,$data);
			$sdata=array();
			$sdata['message']='Update Category Information Successfully !';
			$this->session->set_userdata($sdata);
			redirect('administrator/manage_category');
		}
		
		public function add_blog()
		{
			$data=array();
			$data['all_published_category']=$this->administrator_model->select_all_published_category();
			$data['admin_main_content']=$this->load->view('admin/add_blog',$data,true);
			$this->load->view('admin/admin_master',$data);
		}
		
		public function save_blog()
		{
			$data=array();
			$data['category_id']=$this->input->post('category_id',true);
			$data['blog_title']=$this->input->post('blog_title',true);
			$data['blog_short_description']=$this->input->post('blog_short_description',true);
			$data['blog_long_description']=$this->input->post('blog_long_description',true);
			$data['author_name']=$this->input->post('author_name',true);
			$data['author_email']=$this->input->post('author_email',true); 
			$data['publication_status']=$this->input->post('publication_status',true);
			$this->administrator_model->save_blog_info($data);
			$sdata=array();
			$sdata['message']='Save Blog Information Successfully !';
			$this->session->set_userdata($sdata);
			redirect('administrator/add_blog');
		}
		
		public function logout()
		{
			$this->session->unset_userdata('admin_name');
			$this->session->unset_userdata('id');
			$sdata=array();
			$sdata['message']='You are successfully logout!';
			$this->session->set_userdata($sdata);
			redirect('admin','refresh');
		}
	}
?>