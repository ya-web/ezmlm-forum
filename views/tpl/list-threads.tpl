<script type="text/html" id="tpl-list-threads" >
<table class="list-threads-table table borderless table-hover">
	<thead>
		<tr>
			<th>Sujet</th>
			<th>Auteur</th>
			<th>Messages</th>
			<th>
				{{#sortAsc}}
					<span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
				{{/sortAsc}}
				{{^sortAsc}}
					<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
				{{/sortAsc}}
				<a href="#" title="{{sortTitle}}" class="tool" id="list-tool-sort-date">Activité</a>
			</th>
		</tr>
	</thead>
	<tbody>
		{{#threads}}
		<tr>
			<td>
				<a href="view-thread/{{subject_hash}}">
					{{subject}}
				</a>
			</td>
			<td>{{first_message.author_name}}</td>
			<td>{{nb_messages}}</td>
			<td>
				<div class="message-date" title="{{last_message.message_date}}">
					{{last_message.message_date_moment}}
				</div>
			</td>
		</tr>
		{{/threads}}
	</tbody>
</table>
<div class="list-pager-area">
	{{#pager}}
	<div id="list-threads-pager" class="list-pager">
		<span class="list-pager-total-results">
			{{totalResults}} résultats - 
		</span>
		<span class="list-pager-page-number">
			page {{currentPage}} / {{totalPages}}
		</span>
		<a {{^hasPreviousPages}}disabled {{/hasPreviousPages}} title="Page précédente" id="list-pager-previous-page"
			class="btn btn-primary glyphicon glyphicon-chevron-left"></a>
		<a {{^hasNextPages}}disabled {{/hasNextPages}} title="Page suivante" id="list-pager-next-page"
			class="btn btn-primary glyphicon glyphicon-chevron-right"></a>
	</div>
	{{/pager}}
</div>
</script>