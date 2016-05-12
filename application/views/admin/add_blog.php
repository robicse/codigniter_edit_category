			

<div>
    <ul class="breadcrumb">
        <li>
            <a href="#">Home</a> <span class="divider">/</span>
        </li>
        <li>
            <a href="#">Add Blog</a>
        </li>
    </ul>
</div>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h2><i class="icon-edit"></i> Add Blog</h2>
            <div class="box-icon">
                <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <h3 style="color:green">
                <?php
                    $msg=$this->session->userdata('message');
                    if($msg)
                    {
                        echo $msg;
                        $this->session->unset_userdata('message');
                    }
                ?>
            </h3>
            <form class="form-horizontal" action="<?php echo base_url()?>administrator/save_blog" method="post">
                <fieldset>
                    <legend></legend>
                    <div class="control-group">
                        <label class="control-label" for="typeahead">Blog Title </label>
                        <div class="controls">
                            <input type="text" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" name="blog_title" >
                            
                        </div>
                    </div>
					<div class="control-group">
                        <label class="control-label" for="typeahead">Category Name </label>
                        <div class="controls">
                            <select name="category_id">
                                <option>Select Category Name....</option>
                                <?php
                                    foreach($all_published_category as $v_category)
                                    {
                                        
                                ?>
                                <option value="<?php echo $v_category->category_id?>"><?php echo $v_category->category_name?></option>
                                    <?php } ?>
                            </select>
                            
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="textarea2">Blog Short Description</label>
                        <div class="controls">
                            <textarea class="cleditor" id="textarea2" rows="3" name="blog_short_description"></textarea>
                        </div>
                    </div>
					<div class="control-group">
                        <label class="control-label" for="textarea2">Blog Long Description</label>
                        <div class="controls">
                            <textarea class="cleditor" id="textarea2" rows="3" name="blog_long_description"></textarea>
                        </div>
                    </div>
					<div class="control-group">
                        <label class="control-label" for="typeahead">Author Name </label>
                        <div class="controls">
                            <input type="text" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" name="author_name" >
                            
                        </div>
                    </div>
					<div class="control-group">
                        <label class="control-label" for="typeahead">Author Email </label>
                        <div class="controls">
                            <input type="text" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" name="author_email" >
                            
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Publication Status</label>
                        <div class="controls">
                          <label class="radio">
                                <input type="radio" name="publication_status" id="optionsRadios1" value="1" checked="checked">
                                Published
                          </label>
                          <div style="clear:both"></div>
                          <label class="radio">
                                <input type="radio" name="publication_status" id="optionsRadios2" value="0">
                                Unpublished
                          </label>
                        </div>
                  </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">Save</button>
                        <button type="reset" class="btn">Cancel</button>
                    </div>
                </fieldset>
            </form>   

        </div>
    </div><!--/span-->
