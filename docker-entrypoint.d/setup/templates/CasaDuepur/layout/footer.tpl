{extends file="{$parent_template_path}/layout/footer.tpl"} 

{block name="footer-js" append}
{literal}
<script type="text/javascript" src="/templates/CasaDuepur/js/jquery.socialshareprivacy.min.js"></script>
<script type="text/javascript">// <![CDATA[
jQuery(document).ready(function($){ if($('#socialshareprivacy').length > 0){
$('#socialshareprivacy').socialSharePrivacy({
"css_path" : "/templates/CasaDuepur/js/socialshareprivacy/socialshareprivacy.css",
"lang_path" : "/templates/CasaDuepur/js/socialshareprivacy/lang/",
"language" : "de"
});
}
});
// ]]></script>
{/literal}
{/block}
