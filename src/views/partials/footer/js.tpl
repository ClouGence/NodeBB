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
    	setInterval(() => {
    	const content = document.querySelector('.markdown-content');
        		if(content) {
        			const style = content.getBoundingClientRect();
        			const toc = document.querySelector('.toc');
        			toc.style.left = style.right + 'px';
					const posts = document.querySelector('.posts');
					if(posts) {
						posts.style.paddingRight = '200px';
					}
					const quickReply = document.querySelector('.quick-reply');
					if(quickReply) {
						quickReply.style.paddingRight = '200px';
					}
					const postBar = document.querySelectorAll('.post-bar');
					if(postBar) {
						postBar[postBar.length-1].style.paddingRight = '200px';
					}
        		}
    	}, 100)
	});
</script>