{include file="sections/header.tpl"}

<div class="row">
	<div class="col-sm-12 col-md-12">
		<div class="panel panel-primary panel-hovered panel-stacked mb30">
			<div class="panel-heading">{Lang::T('Send Bulk Message')}</div>
			<div class="panel-body">
				<form class="form-horizontal" method="post" role="form" action="{$_url}message/send_bulk-post">
					<div class="form-group">
						<label class="col-md-2 control-label">{Lang::T('Group')}</label>
						<div class="col-md-6">
							<select class="form-control" name="group" id="group">
								<option value="all" selected>{Lang::T('All Customers')}</option>
								<option value="new">{Lang::T('New Customers')}</option>
								<option value="expired">{Lang::T('Expired Customers')}</option>
								<option value="active">{Lang::T('Active Customers')}</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">{Lang::T('Send Via')}</label>
						<div class="col-md-6">
							<select class="form-control" name="via" id="via">
								<option value="sms" selected>{Lang::T('SMS')}</option>
								<option value="wa">{Lang::T('WhatsApp')}</option>
								<option value="both">{Lang::T('SMS and WhatsApp')}</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label">{Lang::T('Message')}</label>
						<div class="col-md-6">
							<textarea class="form-control" id="message" name="message" placeholder="{Lang::T('Compose your message...')}" rows="5"></textarea>
						</div>
						<p class="help-block col-md-4">
							{Lang::T('Use placeholders:')}
							<br>
							<b>[[name]]</b> - {Lang::T('Customer Name')}
							<br>
							<b>[[user_name]]</b> - {Lang::T('Customer Username')}
							<br>
							<b>[[phone]]</b> - {Lang::T('Customer Phone')}
							<br>
							<b>[[company_name]]</b> - {Lang::T('Your Company Name')}
						</p>
					</div>
				
					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<button class="btn btn-success" type="submit">{Lang::T('Send Message')}</button>
							<a href="{$_url}dashboard" class="btn btn-default">{Lang::T('Cancel')}</a>
						</div>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</div>


{include file="sections/footer.tpl"}
