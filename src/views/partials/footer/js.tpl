<div class=footer>
	Copyright © 2020 ClouGence, Inc.备案号：<a href='https://beian.miit.gov.cn' target='_blank'>浙ICP备20007605号-2</a>
</div>
<style>
	.footer {
		width: 100%;
		height: 40px;
		line-height: 40px;
	}
</style>
<script defer src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>


{{{each scripts}}}
<script defer type="text/javascript" src="{scripts.src}"></script>
{{{end}}}

<script>
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', prepareFooter);
    } else {
        prepareFooter();
    }

    function prepareFooter() {
        <!-- IF useCustomJS -->
        {{customJS}}
        <!-- ENDIF useCustomJS -->

        $(document).ready(function () {
            app.coldLoad();
        });
    }
</script>