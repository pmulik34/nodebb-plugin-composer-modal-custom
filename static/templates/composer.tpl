<div component="composer"
	class="composer {{{ if resizable }}} resizable{{{ end }}}{{{ if !isTopicOrMain }}} reply{{{ end }}}">
	<div class="composer-container d-flex flex-column gap-1 h-100">
		<!-- mobile header -->
		<nav class="navbar fixed-top mobile-navbar hidden-md hidden-lg text-bg-primary flex-nowrap gap-1 px-1">
			<div class="btn-group">
				<button class="btn btn-sm btn-primary composer-discard" data-action="discard" tabindex="-1"><i
						class="fa fa-fw fa-times"></i></button>
				<button class="btn btn-sm btn-primary composer-minimize" data-action="minimize" tabindex="-1"><i
						class="fa fa-fw fa-minus"></i></button>
			</div>
			{{{ if isTopic }}}
			<div class="category-name-container">
				<span class="category-name"></span> <i class="fa fa-sort"></i>
			</div>
			{{{ end }}}
			{{{ if !isTopicOrMain }}}
			<h4 class="title text-bg-primary">{{{ if isEditing }}}[[topic:composer.editing-in, "{topicTitle}"]]{{{ else
				}}}[[topic:composer.replying-to, "{topicTitle}"]]{{{ end }}}</h4>
			{{{ end }}}
			<div class="display-scheduler p-2 {{{ if !canSchedule }}} hidden{{{ end }}}">
				<i class="fa fa-clock-o"></i>
			</div>
			<div class="btn-group">
				<button class="btn btn-sm btn-primary composer-submit" data-action="post" tabindex="-1"><i
						class="fa fa-fw fa-chevron-right"></i></button>
			</div>
		</nav>
		<div class="p-2 d-flex flex-column gap-1 h-100">
			<!-- IMPORT partials/composer-title-container.tpl -->

			<!-- IMPORT partials/composer-formatting.tpl -->

			<!-- IMPORT partials/composer-write-preview.tpl -->

			{{{ if isTopicOrMain }}}
			<!-- IMPORT partials/composer-tags.tpl -->
			{{{ end }}}

			<div class="imagedrop">
				<div>[[topic:composer.drag-and-drop-images]]</div>
			</div>

			<div class="resizer position-absolute w-100 bottom-100 pe-3 border-bottom">
				<div class="trigger text-center">
					<div class="handle d-inline-block px-2 py-1 border bg-body">
						<i class="fa fa-fw fa-up-down"></i>
					</div>
				</div>
			</div>

			<!-- Action bar moved to the bottom -->
			<!-- <div class="{{{ if !template.compose }}}d-none d-md-flex{{{ else }}}d-flex{{{ end }}} action-bar gap-1 align-items-center mt-1">
				<button class="btn btn-sm btn-link composer-discard text-body fw-semibold" style="margin-top:-0.4rem !important;" data-action="discard"><i class="fa fa-trash"></i> <span class="d-none d-md-inline">[[topic:composer.discard]]</button>
				<div class="btn-group btn-group-sm" component="composer/submit/container">
					<button class="btn btn-primary composer-submit fw-bold" data-action="post" data-text-variant=" [[topic:composer.schedule]]"><i class="fa fa-check" style="margin-right: 0.4rem !important;"></i> <span class="d-none d-md-inline">[[topic:composer.submit]]</span></button>
				</div>
			</div> -->

			<div
				class="{{{ if !template.compose }}}d-none d-md-flex{{{ else }}}d-flex{{{ end }}} action-bar gap-1 align-items-center">
				<button class="btn btn-sm btn-link composer-discard text-body fw-semibold" data-action="discard" style="margin-top:-0.5rem !important;"><i
						class="fa fa-trash"></i> <span class="d-none d-md-inline">[[topic:composer.discard]]</button>
				<div class="btn-group btn-group-sm" component="composer/submit/container">
					<button
						class="btn btn-primary composer-submit fw-bold {{{ if !(submitOptions.length || canSchedule) }}}rounded-1{{{ end }}}"
						data-action="post" data-text-variant=" [[topic:composer.schedule]]"><i class="fa fa-check" style="margin-right: 0.4rem !important;"></i>
						<span class="d-none d-md-inline">[[topic:composer.submit]]</span></button>
					<div component="composer/submit/options/container" data-submit-options="{submitOptions.length}"
						class="btn-group btn-group-sm {{{ if !(submitOptions.length || canSchedule) }}}hidden{{{ end }}}">
						<button type="button" class="submit-options btn btn-primary dropdown-toggle" data-bs-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">
							<i class="fa fa-caret-down"></i>
							<span class="sr-only">[[topic:composer.additional-options]]</span>
						</button>
						<ul class="dropdown-menu dropdown-menu-end p-1" role="menu">
							<li><a class="dropdown-item rounded-1 cancel-scheduling hidden"
									role="menuitem">[[modules:composer.cancel-scheduling]]</a></li>
							{{{ each submitOptions }}}
							<li><a class="dropdown-item rounded-1" href="#" data-action="{./action}"
									role="menuitem">{./text}</a></li>
							{{{ end }}}
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>