// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Model;

import com.chartboost.sdk.Libraries.a;
import com.chartboost.sdk.Libraries.g;

public class b
{

    public static com.chartboost.sdk.Libraries.g.a a;
    public static com.chartboost.sdk.Libraries.g.a b;
    public static com.chartboost.sdk.Libraries.g.a c;
    public static com.chartboost.sdk.Libraries.g.a d;
    private static com.chartboost.sdk.Libraries.g.a e;
    private static com.chartboost.sdk.Libraries.g.a f;
    private static com.chartboost.sdk.Libraries.g.a g;
    private static com.chartboost.sdk.Libraries.g.a h;
    private static com.chartboost.sdk.Libraries.g.a i;

    static 
    {
        e = com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("url", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("id", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("local-file", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("buffer", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b()))
        });
        f = com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("url", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("scale", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b())), com.chartboost.sdk.Libraries.g.a("offset", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("x", com.chartboost.sdk.Libraries.g.b()), com.chartboost.sdk.Libraries.g.a("y", com.chartboost.sdk.Libraries.g.b())
            })))
        });
        g = com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("video-landscape", com.chartboost.sdk.Libraries.g.a(e)), com.chartboost.sdk.Libraries.g.a("video-portrait", com.chartboost.sdk.Libraries.g.a(e)), com.chartboost.sdk.Libraries.g.a("ad-landscape", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("frame-landscape", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("close-landscape", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("replay-landscape", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("ad-portrait", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("frame-portrait", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("close-portrait", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("replay-portrait", com.chartboost.sdk.Libraries.g.a(f)), 
            com.chartboost.sdk.Libraries.g.a("video-click-button", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("post-video-icon", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("post-video-button", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("video-confirmation-icon", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("video-confirmation-button", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("post-video-reward-icon", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("blur-background", com.chartboost.sdk.Libraries.g.a(f))
        });
        h = com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("progress", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("delay", com.chartboost.sdk.Libraries.g.b()), com.chartboost.sdk.Libraries.g.a("background-color", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("progress-color", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("border-color", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("radius", com.chartboost.sdk.Libraries.g.b())
            }))), com.chartboost.sdk.Libraries.g.a("video-controls-togglable", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.c())), com.chartboost.sdk.Libraries.g.a("video-controls-background", com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("color", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("border-color", com.chartboost.sdk.Libraries.g.a())
            })), com.chartboost.sdk.Libraries.g.a("post-video-toaster", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("title", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("tagline", com.chartboost.sdk.Libraries.g.a())
            }))), com.chartboost.sdk.Libraries.g.a("pre-popup", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("title", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("text", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("confirm", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("cancel", com.chartboost.sdk.Libraries.g.a())
            }))), com.chartboost.sdk.Libraries.g.a("post-popup", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("title", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("text", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("confirm", com.chartboost.sdk.Libraries.g.a())
            }))), com.chartboost.sdk.Libraries.g.a("cancel-popup", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("title", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("text", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("confirm", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("cancel", com.chartboost.sdk.Libraries.g.a())
            }))), com.chartboost.sdk.Libraries.g.a("confirmation", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("text", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("color", com.chartboost.sdk.Libraries.g.a())
            }))), com.chartboost.sdk.Libraries.g.a("video-progress-timer-enabled", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.c())), com.chartboost.sdk.Libraries.g.a("post-video-reward-toaster", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("text", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("position", com.chartboost.sdk.Libraries.g.a(new Object[] {
                    "inside-top", "outside-bottom"
                }))
            }))), 
            com.chartboost.sdk.Libraries.g.a("play-another-popup", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("skip-confirmation", com.chartboost.sdk.Libraries.g.c()), com.chartboost.sdk.Libraries.g.a("title", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("text", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("cancel", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("confirm", com.chartboost.sdk.Libraries.g.a())
            })))
        }));
        a = com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("close", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("header-center", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("header-tile", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("header-height", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b())), com.chartboost.sdk.Libraries.g.a("background-color", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("header-text", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("text-color", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("close-landscape", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("header-landscape", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("close-portrait", com.chartboost.sdk.Libraries.g.a(f)), 
            com.chartboost.sdk.Libraries.g.a("header-portrait", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("install-button", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("play-button", com.chartboost.sdk.Libraries.g.a(f)), com.chartboost.sdk.Libraries.g.a("offset", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.b(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("x", com.chartboost.sdk.Libraries.g.b()), com.chartboost.sdk.Libraries.g.a("y", com.chartboost.sdk.Libraries.g.b())
            })))
        });
        i = com.chartboost.sdk.Libraries.g.b(com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("type", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("name", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("cgn", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("more_type", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("assets", com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("icon", f)
            })), com.chartboost.sdk.Libraries.g.a("text", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("link", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("deep-link", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("itunes_id", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("publisher", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), 
            com.chartboost.sdk.Libraries.g.a("description", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("border-color", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a()))
        }));
        b = com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("status", a.a), com.chartboost.sdk.Libraries.g.a("ad_id", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("to", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("type", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("native", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("message", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("link", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("deep-link", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("cgn", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("creative", com.chartboost.sdk.Libraries.g.a()), 
            com.chartboost.sdk.Libraries.g.a("assets", g), com.chartboost.sdk.Libraries.g.a("ux", h), com.chartboost.sdk.Libraries.g.a("reward", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a(java/lang/Object)))
        });
        c = com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("status", a.a), com.chartboost.sdk.Libraries.g.a("message", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("type", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("assets", a), com.chartboost.sdk.Libraries.g.a("cells", i)
        });
        d = com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
            com.chartboost.sdk.Libraries.g.a("status", a.a), com.chartboost.sdk.Libraries.g.a("ad_id", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("to", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("type", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("native", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("message", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("link", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("name", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("deep-link", com.chartboost.sdk.Libraries.g.a(com.chartboost.sdk.Libraries.g.a())), com.chartboost.sdk.Libraries.g.a("cgn", com.chartboost.sdk.Libraries.g.a()), 
            com.chartboost.sdk.Libraries.g.a("creative", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("icons", com.chartboost.sdk.Libraries.g.a(new com.chartboost.sdk.Libraries.g.k[] {
                com.chartboost.sdk.Libraries.g.a("sm", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("md", com.chartboost.sdk.Libraries.g.a()), com.chartboost.sdk.Libraries.g.a("lg", com.chartboost.sdk.Libraries.g.a())
            }))
        });
    }
}
