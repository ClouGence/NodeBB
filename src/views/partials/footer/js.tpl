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

    window.addEventListener('DOMContentLoaded', function () {
		const content = document.querySelector('.markdown-content');
		if(content) {
			const style = content.getBoundingClientRect();
			const toc = document.querySelector('.toc');
			toc.style.left = (style.right - 200) + 'px';
		}
	});

    window.addEventListener('resize', function () {
		const content = document.querySelector('.markdown-content');
		if(content) {
			const style = content.getBoundingClientRect();
			const toc = document.querySelector('.toc');
			toc.style.left = (style.right - 200) + 'px';
		}
	});
</script>