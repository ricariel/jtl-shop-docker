{extends file="{$parent_template_path}/layout/header_top_bar.tpl"} 

{block name="top-bar-cms-pages" append}
<li class="{if isset($Link->aktiv) && $Link->aktiv == 1}active{/if}">

                {if $Einstellungen.template.footer.socialmedia_footer === 'Y'}
                        <div class="pull-right">
                            {block name="footer-socialmedia"}
                                {if !empty($Einstellungen.template.footer.facebook)}
                                    <a href="{if $Einstellungen.template.footer.facebook|strpos:'http' !== 0}https://{/if}{$Einstellungen.template.footer.facebook}" class="btn-social btn-facebook" title="Facebook" target="_blank" rel="noopener"><i class="fa fa-facebook-square"></i></a>
                                {/if}
                                {if !empty($Einstellungen.template.footer.twitter)}
                                    <a href="{if $Einstellungen.template.footer.twitter|strpos:'http' !== 0}https://{/if}{$Einstellungen.template.footer.twitter}" class="btn-social btn-twitter" title="Twitter" target="_blank" rel="noopener"><i class="fa fa-twitter-square"></i></a>
                                {/if}
                                {if !empty($Einstellungen.template.footer.googleplus)}
                                    <a href="{if $Einstellungen.template.footer.googleplus|strpos:'http' !== 0}https://{/if}{$Einstellungen.template.footer.googleplus}" class="btn-social btn-googleplus" title="Google+" target="_blank" rel="noopener"><i class="fa fa-google-plus-square"></i></a>
                                {/if}
                                {if !empty($Einstellungen.template.footer.youtube)}
                                    <a href="{if $Einstellungen.template.footer.youtube|strpos:'http' !== 0}https://{/if}{$Einstellungen.template.footer.youtube}" class="btn-social btn-youtube" title="YouTube" target="_blank" rel="noopener"><i class="fa fa-youtube-square"></i></a>
                                {/if}
                                {if !empty($Einstellungen.template.footer.vimeo)}
                                    <a href="{if $Einstellungen.template.footer.vimeo|strpos:'http' !== 0}https://{/if}{$Einstellungen.template.footer.vimeo}" class="btn-social btn-vimeo" title="Vimeo" target="_blank" rel="noopener"><i class="fa fa-vimeo-square"></i></a>
                                {/if}
                                {if !empty($Einstellungen.template.footer.pinterest)}
                                    <a href="{if $Einstellungen.template.footer.pinterest|strpos:'http' !== 0}https://{/if}{$Einstellungen.template.footer.pinterest}" class="btn-social btn-pinterest" title="PInterest" target="_blank" rel="noopener"><i class="fa fa-pinterest-square"></i></a>
                                {/if}
                                {if !empty($Einstellungen.template.footer.instagram)}
                                    <a href="{if $Einstellungen.template.footer.instagram|strpos:'http' !== 0}https://{/if}{$Einstellungen.template.footer.instagram}" class="btn-social btn-instagram" title="Instagram" target="_blank" rel="noopener"><i class="fa fa-instagram"></i></a>
                                {/if}
                                {if !empty($Einstellungen.template.footer.skype)}
                                    <a href="{if $Einstellungen.template.footer.skype|strpos:'skype:' !== 0}skype:{$Einstellungen.template.footer.skype}?add{else}{$Einstellungen.template.footer.skype}{/if}" class="btn-social btn-skype" title="Skype" target="_blank" rel="noopener"><i class="fa fa-skype"></i></a>
                                {/if}
                                {if !empty($Einstellungen.template.footer.xing)}
                                    <a href="{if $Einstellungen.template.footer.xing|strpos:'http' !== 0}https://{/if}{$Einstellungen.template.footer.xing}" class="btn-social btn-xing" title="Xing" target="_blank" rel="noopener"><i class="fa fa-xing-square"></i></a>
                                {/if}
                                {if !empty($Einstellungen.template.footer.linkedin)}
                                    <a href="{if $Einstellungen.template.footer.linkedin|strpos:'http' !== 0}https://{/if}{$Einstellungen.template.footer.linkedin}" class="btn-social btn-linkedin" title="Linkedin" target="_blank" rel="noopener"><i class="fa fa-linkedin-square"></i></a>
                                {/if}
                            {/block}
                        </div>
                {/if}

</li>
{/block}
