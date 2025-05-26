<div class="title-container d-flex flex-column gap-2">
	{{{ if isTopic }}}
	<div class="category-list-container {{{ if !template.compose }}}d-none d-md-block{{{ end }}} align-self-stretch mb-1">
		<!-- IMPORT partials/category/selector-dropdown-left.tpl -->
	</div>
	{{{ end }}}

	{{{ if showHandleInput }}}
	<div data-component="composer/handle" class="mb-1">
		<input class="handle form-control h-100 border-0 shadow-none" type="text" placeholder="[[topic:composer.handle-placeholder]]" value="{handle}" />
	</div>
	{{{ end }}}

	<div data-component="composer/title" class="position-relative flex-1 mb-1" style="min-width: 0;">
		{{{ if isTopicOrMain }}}
		<input class="title form-control h-100 rounded-1 shadow-none" type="text" placeholder="[[topic:composer.title-placeholder]]" value="{topicTitle}" />
		{{{ else }}}
		<span class="{{{ if !template.compose }}}d-none d-md-block{{{ else }}}d-block{{{ end }}} title h-100 text-truncate">{{{ if isEditing }}}[[topic:composer.editing-in, "{topicTitle}"]]{{{ else }}}[[topic:composer.replying-to, "{topicTitle}"]]{{{ end }}}</span>
		{{{ end }}}
		<div id="quick-search-container" class="quick-search-container mt-2 dropdown-menu d-block p-2 hidden">
			<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
			<div class="quick-search-results-container"></div>
		</div>
	</div>
</div>
