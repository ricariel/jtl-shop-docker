{extends file="{$parent_template_path}/layout/header.tpl"} 


{block name="head-resources" append}
    {if isset($Artikel) && !empty($Artikel->Bilder)}
        <meta property="og:image" content="{$ShopURL}/{$Artikel->Bilder[0]->cPfadNormal}" />
    {/if}

   <link rel="preconnect" href="//www.haendlerbund.de" />
   <link rel="preconnect" href="//siegel.ausgezeichnet.org" />
 
   <link rel="prefetch" href=" /templates/CasaDuepur/themes/base/images/favicon.ico" as="image" crossorigin="anonymous" type="image/vnd.microsoft.icon" /> 
 
   <meta name="publisher" content="{$meta_publisher}" />
   <meta name="copyright" content="{$meta_copyright}" />
{/block}
