<% if IncludeFormTag %>
<form $FormAttributes data-layout-type="border">
<% end_if %>
	<div class="cms-content-header north">
		<div class="cms-content-header-info">
			<% include BackLink_Button %>
			<h2 id="page-title-heading">
			<% with Controller %>
				<% include CMSBreadcrumbs %>
			<% end_with %>
			</h2>
		</div>
		
		<% if Fields.hasTabset %>
			<% with Fields.fieldByName('Root') %>
			<div class="cms-content-header-tabs">
				<ul>
				<% loop Tabs %>
					<li<% if extraClass %> class="$extraClass"<% end_if %>><a href="#$id">$Title</a></li>
				<% end_loop %>
				</ul>
			</div>
			<% end_with %>
		<% end_if %>
	</div>
	
	<div class="cms-content-fields center cms-panel-padded">
		<% if Message %>
		<p id="{$FormName}_error" class="message $MessageType">$Message</p>
		<% else %>
		<p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
		<% end_if %>

		<fieldset>
			<% if Legend %><legend>$Legend</legend><% end_if %> 
			<% loop Fields %>
				$FieldHolder
			<% end_loop %>
			<div class="clear"><!-- --></div>
		</fieldset>
	</div>

	<div class="cms-content-actions south">
		<% if Actions %>
		<div class="Actions">
			<% loop Actions %>
				$Field
			<% end_loop %>
		</div>
		<% end_if %>
	</div>
<% if IncludeFormTag %>
</form>
<% end_if %>