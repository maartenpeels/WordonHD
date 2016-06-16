// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.jirbo.adcolony;

import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package com.jirbo.adcolony:
//            a, d, o, b, 
//            q, l, t, ah, 
//            ag, f, k, u

class com.jirbo.adcolony.n
{
    static class a
    {

        String a;
        String b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        boolean n;
        boolean o;
        n p;
        x q;
        m r;
        c s;
        b t;
        h u;
        aa v;
        p w;
        y x;

        boolean a()
        {
            if (!r.a())
            {
                return false;
            }
            if (s.a && !s.a())
            {
                return false;
            }
            if (w.a && !w.a())
            {
                return false;
            }
            if (u.d && !u.a())
            {
                return false;
            }
            if (!v.a())
            {
                return false;
            }
            return x.a();
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.e("uuid");
            b = g1.e("title");
            c = g1.g("ad_campaign_id");
            d = g1.g("ad_id");
            e = g1.g("ad_group_id");
            f = g1.g("cpcv_bid");
            g = g1.g("net_earnings");
            h = g1.g("expires");
            i = g1.h("enable_in_app_store");
            j = g1.h("video_events_on_replays");
            k = g1.h("test_ad");
            l = g1.h("fullscreen");
            m = g1.h("house_ad");
            n = g1.h("contracted");
            p = new n();
            if (!p.a(g1.b("limits")))
            {
                return false;
            }
            q = new x();
            if (!q.a(g1.b("third_party_tracking")))
            {
                return false;
            }
            r = new m();
            if (!r.a(g1.b("in_app_browser")))
            {
                return false;
            }
            w = new p();
            if (!w.a(g1.b("native")))
            {
                return false;
            }
            s = new c();
            if (!s.a(g1.b("v4vc")))
            {
                return false;
            }
            t = new b();
            if (!t.a(g1.b("ad_tracking")))
            {
                return false;
            }
            u = new h();
            if (!u.a(g1.b("companion_ad")))
            {
                return false;
            }
            v = new aa();
            if (!v.a(g1.b("video")))
            {
                return false;
            }
            x = new y();
            return x.a(g1.b("v4iap"));
        }

        void b()
        {
            s.b();
            r.b();
            w.b();
            u.b();
            v.c();
        }

        a()
        {
        }
    }

    static class aa
    {

        boolean a;
        int b;
        int c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        double k;
        g l;
        g m;
        g n;
        k o;

        boolean a()
        {
            if (!a)
            {
                return true;
            }
            if (!com.jirbo.adcolony.a.l.c.a(d))
            {
                return false;
            }
            if (!l.a())
            {
                return false;
            }
            if (!m.a())
            {
                return false;
            }
            if (!o.a())
            {
                return false;
            }
            if (!n.a())
            {
                return false;
            }
            if (com.jirbo.adcolony.a.l.b.j.i.equals("online") && !com.jirbo.adcolony.q.c())
            {
                com.jirbo.adcolony.a.ac = 9;
                return com.jirbo.adcolony.l.c.b("Video not ready due to VIEW_FILTER_ONLINE");
            }
            if (com.jirbo.adcolony.a.l.b.j.i.equals("wifi") && !com.jirbo.adcolony.q.a())
            {
                com.jirbo.adcolony.a.ac = 9;
                return com.jirbo.adcolony.l.c.b("Video not ready due to VIEW_FILTER_WIFI");
            }
            if (com.jirbo.adcolony.a.l.b.j.i.equals("cell") && !com.jirbo.adcolony.q.b())
            {
                com.jirbo.adcolony.a.ac = 9;
                return com.jirbo.adcolony.l.c.b("Video not ready due to VIEW_FILTER_CELL");
            }
            if (com.jirbo.adcolony.a.l.b.j.i.equals("offline") && com.jirbo.adcolony.q.c())
            {
                com.jirbo.adcolony.a.ac = 9;
                return com.jirbo.adcolony.l.c.b("Video not ready due to VIEW_FILTER_OFFLINE");
            } else
            {
                return true;
            }
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.h("enabled");
            if (!a)
            {
                return true;
            }
            b = g1.g("width");
            c = g1.g("height");
            d = g1.e("url");
            e = g1.e("last_modified");
            f = g1.e("video_frame_rate");
            g = g1.e("audio_channels");
            h = g1.e("audio_codec");
            i = g1.e("audio_sample_rate");
            j = g1.e("video_codec");
            k = g1.f("duration");
            l = new g();
            if (!l.a(g1.b("skip_video")))
            {
                return false;
            }
            m = new g();
            if (!m.a(g1.b("in_video_engagement")))
            {
                return false;
            }
            o = new k();
            if (!o.a(g1.b("haptic")))
            {
                return false;
            }
            n = new g();
            return n.a(g1.b("in_video_engagement").b("image_overlay"));
        }

        String b()
        {
            return com.jirbo.adcolony.a.l.c.b(d);
        }

        void c()
        {
            com.jirbo.adcolony.a.l.c.a(d, e);
            m.b();
            l.b();
            o.b();
            n.b();
        }

        aa()
        {
        }
    }

    static class ab
    {

        String a;
        int b;
        int c;
        int d;
        boolean e;
        boolean f;
        ArrayList g;
        ac h;
        d i;
        ad j;
        ag k;

        int a(int i1, int j1)
        {
            if (j1 <= 0)
            {
                return 0;
            }
            if (i1 == -1)
            {
                return j1;
            }
            if (i1 < j1)
            {
                return i1;
            } else
            {
                return j1;
            }
        }

        int a(a a1)
        {
            this;
            JVM INSTR monitorenter ;
            int k1 = com.jirbo.adcolony.a.l.h.b(a);
            int i1 = -1;
            int j1 = a1.p.g;
            if (j1 == 0) goto _L2; else goto _L1
_L1:
            if (com.jirbo.adcolony.a.ab == 0L || (System.currentTimeMillis() - com.jirbo.adcolony.a.ab) / 1000L < (long)j1) goto _L2; else goto _L3
_L3:
            c();
            com.jirbo.adcolony.a.ac = 7;
            i1 = com.jirbo.adcolony.l.c.c("The volatile expiration for this ad has been hit.");
_L4:
            this;
            JVM INSTR monitorexit ;
            return i1;
_L2:
            j1 = a1.p.h;
            if (j1 <= 0)
            {
                break MISSING_BLOCK_LABEL_123;
            }
            i1 = a(-1, j1 - com.jirbo.adcolony.a.l.h.a(a1.d, (System.currentTimeMillis() - com.jirbo.adcolony.a.ab) / 1000L));
            if (i1 != 0 || j1 == 0)
            {
                break MISSING_BLOCK_LABEL_152;
            }
            c();
            com.jirbo.adcolony.a.ac = 7;
            i1 = com.jirbo.adcolony.l.c.c("Ad is not ready to be played due to the volatile play cap.");
              goto _L4
            int l1 = c;
            j1 = i1;
            if (l1 <= 0)
            {
                break MISSING_BLOCK_LABEL_176;
            }
            j1 = a(i1, l1 - k1);
            if (j1 != 0)
            {
                break MISSING_BLOCK_LABEL_216;
            }
            com.jirbo.adcolony.a.ac = 5;
            i1 = com.jirbo.adcolony.l.c.c((new StringBuilder()).append("Ad is not ready to be played due to the daily play cap for zone ").append(a).toString());
              goto _L4
            l1 = d;
            i1 = j1;
            if (l1 <= 0)
            {
                break MISSING_BLOCK_LABEL_251;
            }
            i1 = a(j1, l1 - com.jirbo.adcolony.a.l.h.a(a));
            if (i1 != 0)
            {
                break MISSING_BLOCK_LABEL_291;
            }
            com.jirbo.adcolony.a.ac = 3;
            i1 = com.jirbo.adcolony.l.c.c((new StringBuilder()).append("Ad is not ready to be played due to the session play cap for zone ").append(a).toString());
              goto _L4
            if (!j.a)
            {
                break MISSING_BLOCK_LABEL_735;
            }
            j1 = j.b.a;
            if (j1 <= 0) goto _L6; else goto _L5
_L5:
            j1 = a(i1, j1 - k1);
_L8:
            if (j1 != 0)
            {
                break MISSING_BLOCK_LABEL_346;
            }
            com.jirbo.adcolony.a.ac = 4;
            i1 = com.jirbo.adcolony.l.c.c("Ad is not ready to be played due to the V4VC daily play cap.");
              goto _L4
            k1 = j.b.c;
            l1 = j.b.b;
            i1 = j1;
            if (l1 <= 0)
            {
                break MISSING_BLOCK_LABEL_402;
            }
            i1 = a(j1, l1 - com.jirbo.adcolony.a.l.h.a(a, k1));
            j1 = i1;
            if (i1 != 0)
            {
                break MISSING_BLOCK_LABEL_424;
            }
            com.jirbo.adcolony.a.ac = 4;
            i1 = com.jirbo.adcolony.l.c.c("Ad is not ready to be played due to the V4VC custom play cap.");
              goto _L4
_L9:
            k1 = a1.d;
            l1 = a1.p.a;
            i1 = j1;
            if (l1 <= 0)
            {
                break MISSING_BLOCK_LABEL_466;
            }
            i1 = a(j1, l1 - com.jirbo.adcolony.a.l.h.a(k1));
            if (i1 != 0)
            {
                break MISSING_BLOCK_LABEL_491;
            }
            com.jirbo.adcolony.a.ac = 7;
            c();
            i1 = com.jirbo.adcolony.l.c.c("Ad is not ready to be played due to the daily play cap.");
              goto _L4
            l1 = a1.p.f;
            j1 = i1;
            if (l1 <= 0)
            {
                break MISSING_BLOCK_LABEL_527;
            }
            j1 = a(i1, l1 - com.jirbo.adcolony.a.l.h.b(k1));
            if (j1 != 0)
            {
                break MISSING_BLOCK_LABEL_552;
            }
            com.jirbo.adcolony.a.ac = 7;
            c();
            i1 = com.jirbo.adcolony.l.c.c("Ad is not ready to be played due to the weekly play cap.");
              goto _L4
            l1 = a1.p.e;
            i1 = j1;
            if (l1 <= 0)
            {
                break MISSING_BLOCK_LABEL_588;
            }
            i1 = a(j1, l1 - com.jirbo.adcolony.a.l.h.c(k1));
            if (i1 != 0)
            {
                break MISSING_BLOCK_LABEL_613;
            }
            com.jirbo.adcolony.a.ac = 7;
            c();
            i1 = com.jirbo.adcolony.l.c.c("Ad is not ready to be played due to the monthly play cap.");
              goto _L4
            l1 = a1.p.d;
            j1 = i1;
            if (l1 <= 0)
            {
                break MISSING_BLOCK_LABEL_649;
            }
            j1 = a(i1, l1 - com.jirbo.adcolony.a.l.h.d(k1));
            if (j1 != 0)
            {
                break MISSING_BLOCK_LABEL_674;
            }
            com.jirbo.adcolony.a.ac = 7;
            c();
            i1 = com.jirbo.adcolony.l.c.c("Ad is not ready to be played due to the half-year play cap.");
              goto _L4
            int i2;
            l1 = a1.p.c;
            i2 = a1.p.b;
            i1 = j1;
            if (i2 <= 0) goto _L4; else goto _L7
_L7:
            i1 = a(j1, i2 - com.jirbo.adcolony.a.l.h.a(k1, l1));
              goto _L4
            a1;
            throw a1;
_L6:
            j1 = i1;
              goto _L8
            j1 = i1;
              goto _L9
        }

        boolean a()
        {
            return a(false, true);
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.e("uuid");
            e = g1.h("enabled");
            f = g1.h("active");
            if (!e || !f)
            {
                return true;
            }
            b = g1.g("play_interval");
            c = g1.g("daily_play_cap");
            d = g1.g("session_play_cap");
            g = new ArrayList();
            ArrayList arraylist = g1.d("play_order");
            g = arraylist;
            if (arraylist == null)
            {
                return false;
            }
            h = new ac();
            if (!h.a(g1.b("tracking")))
            {
                return false;
            }
            i = new d();
            if (!i.a(g1.c("ads")))
            {
                return false;
            }
            j = new ad();
            if (!j.a(g1.b("v4vc")))
            {
                return false;
            } else
            {
                k = com.jirbo.adcolony.a.l.g.a(a);
                return true;
            }
        }

        boolean a(boolean flag)
        {
            int i1;
            int j1;
            if (!flag)
            {
                com.jirbo.adcolony.a.h();
            }
            if (!e || !f)
            {
                return false;
            }
            if (i.a() == 0 || g.size() == 0)
            {
                return false;
            }
            j1 = g.size();
            i1 = 0;
_L4:
            a a1;
label0:
            {
                if (i1 >= j1)
                {
                    break MISSING_BLOCK_LABEL_109;
                }
                a1 = i();
                if (a1 == null)
                {
                    return false;
                }
                if (a1.a())
                {
                    break label0;
                } else
                {
                    k();
                    i1++;
                    continue; /* Loop/switch isn't completed */
                }
            }
_L2:
            if (a1 == null)
            {
                return false;
            }
            return a(a1) != 0;
            a1 = null;
            if (true) goto _L2; else goto _L1
_L1:
            if (true) goto _L4; else goto _L3
_L3:
        }

        boolean a(boolean flag, boolean flag1)
        {
            int i1;
            int j1;
            if (!flag1)
            {
                return a(flag);
            }
            if (!e || !f)
            {
                com.jirbo.adcolony.a.ac = 1;
                return com.jirbo.adcolony.l.c.b((new StringBuilder()).append("Ad is not ready to be played, as zone ").append(a).append(" is disabled or inactive.").toString());
            }
            if (i.a() == 0 || g.size() == 0)
            {
                com.jirbo.adcolony.a.ac = 5;
                return com.jirbo.adcolony.l.c.b((new StringBuilder()).append("Ad is not ready to be played, as AdColony currently has no videos available to be played in zone ").append(a).append(".").toString());
            }
            j1 = g.size();
            i1 = 0;
_L4:
            a a1;
label0:
            {
                if (i1 >= j1)
                {
                    break MISSING_BLOCK_LABEL_213;
                }
                a1 = i();
                if (a1 == null)
                {
                    return com.jirbo.adcolony.l.c.b("Ad is not ready to be played due to an unknown error.");
                }
                if (a1.a())
                {
                    break label0;
                } else
                {
                    k();
                    i1++;
                    continue; /* Loop/switch isn't completed */
                }
            }
_L2:
            if (a1 == null)
            {
                com.jirbo.adcolony.a.ac = 6;
                return com.jirbo.adcolony.l.c.b("Ad is not ready to be played as required assets are still downloading or otherwise missing.");
            }
            return a(a1) != 0;
            a1 = null;
            if (true) goto _L2; else goto _L1
_L1:
            if (true) goto _L4; else goto _L3
_L3:
        }

        boolean b()
        {
            if (b <= 1)
            {
                return false;
            }
            com.jirbo.adcolony.a.l.g.b = true;
            ag ag1 = k;
            int i1 = ag1.b;
            ag1.b = i1 + 1;
            if (i1 == 0)
            {
                return false;
            }
            if (k.b >= b)
            {
                k.b = 0;
            }
            return true;
        }

        boolean b(boolean flag)
        {
            if (!flag)
            {
                return f();
            }
            if (!e || !f)
            {
                com.jirbo.adcolony.a.ac = 1;
                return com.jirbo.adcolony.l.c.b((new StringBuilder()).append("Ad is not ready, as zone ").append(a).append(" is disabled or inactive.").toString());
            }
            if (i.a() == 0)
            {
                com.jirbo.adcolony.a.ac = 5;
                return com.jirbo.adcolony.l.c.b((new StringBuilder()).append("Ad is not ready, as there are currently no ads to play in zone ").append(a).append(".").toString());
            }
            if (i.b().s.a)
            {
                com.jirbo.adcolony.a.ac = 14;
                return com.jirbo.adcolony.l.c.b((new StringBuilder()).append("Ad is not ready, as zone ").append(a).append(" is V4VC enabled and must be played using an AdColonyV4VCAd object.").toString());
            } else
            {
                return true;
            }
        }

        void c()
        {
            com.jirbo.adcolony.a.l.b.e();
        }

        boolean c(boolean flag)
        {
            if (!flag)
            {
                return h();
            }
            if (!e || !f)
            {
                com.jirbo.adcolony.a.ac = 1;
                return com.jirbo.adcolony.l.c.b((new StringBuilder()).append("Ad is not ready, as zone ").append(a).append(" is disabled or inactive.").toString());
            }
            if (i.a() == 0)
            {
                com.jirbo.adcolony.a.ac = 5;
                return com.jirbo.adcolony.l.c.b((new StringBuilder()).append("Ad is not ready, as there are currently no ads to play in zone ").append(a).append(".").toString());
            }
            if (i.b().s.a)
            {
                return true;
            } else
            {
                com.jirbo.adcolony.a.ac = 15;
                return com.jirbo.adcolony.l.c.b((new StringBuilder()).append("Ad is not ready, as zone ").append(a).append(" is not V4VC enabled and must be played using an AdColonyVideoAd object.").toString());
            }
        }

        int d()
        {
            this;
            JVM INSTR monitorenter ;
            int i1 = a(i());
            this;
            JVM INSTR monitorexit ;
            return i1;
            Exception exception;
            exception;
            throw exception;
        }

        boolean e()
        {
            return b(true);
        }

        boolean f()
        {
            if (!e || !f)
            {
                return false;
            }
            if (i.a() == 0)
            {
                return false;
            }
            return !i.b().s.a;
        }

        boolean g()
        {
            return c(true);
        }

        boolean h()
        {
            if (!e || !f)
            {
                return false;
            }
            if (i.a() == 0)
            {
                return false;
            }
            return i.b().s.a;
        }

        a i()
        {
            if (g.size() > 0)
            {
                return i.a((String)g.get(k.c % g.size()));
            } else
            {
                return null;
            }
        }

        a j()
        {
            if (g.size() > 0)
            {
                return i.b(k.c % g.size());
            } else
            {
                return null;
            }
        }

        void k()
        {
            if (g.size() > 0)
            {
                k.c = (k.c + 1) % g.size();
            }
        }

        void l()
        {
            if (e && f)
            {
                int i1 = 0;
                while (i1 < i.a()) 
                {
                    i.a(i1).b();
                    i1++;
                }
            }
        }

        ab()
        {
        }
    }

    static class ac
    {

        String a;

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return true;
            } else
            {
                a = g1.a("request", null);
                return true;
            }
        }

        ac()
        {
        }
    }

    static class ad
    {

        boolean a;
        z b;
        int c;
        String d;
        boolean e;
        int f;

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.h("enabled");
            if (!a)
            {
                return true;
            }
            b = new z();
            if (!b.a(g1.b("limits")))
            {
                return false;
            } else
            {
                c = g1.g("reward_amount");
                d = g1.e("reward_name");
                e = g1.h("client_side");
                f = g1.g("videos_per_reward");
                return true;
            }
        }

        ad()
        {
        }
    }

    static class ae
    {

        ArrayList a;

        int a()
        {
            return a.size();
        }

        ab a(int i1)
        {
            return (ab)a.get(i1);
        }

        ab a(String s1)
        {
            for (int i1 = 0; i1 < a.size(); i1++)
            {
                ab ab1 = (ab)a.get(i1);
                if (ab1.a.equals(s1))
                {
                    return ab1;
                }
            }

            com.jirbo.adcolony.l.a.a("No such zone: ").b(s1);
            return null;
        }

        boolean a(ADCData.c c1)
        {
            a = new ArrayList();
            if (c1 == null)
            {
                return false;
            }
            for (int i1 = 0; i1 < c1.i(); i1++)
            {
                ab ab1 = new ab();
                if (!ab1.a(c1.b(i1)))
                {
                    return false;
                }
                a.add(ab1);
            }

            return true;
        }

        ab b()
        {
            return (ab)a.get(0);
        }

        ae()
        {
        }
    }

    static class b
    {

        String A;
        String B;
        String C;
        ADCData.g D;
        String a;
        String b;
        String c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        String l;
        String m;
        String n;
        String o;
        String p;
        String q;
        String r;
        String s;
        String t;
        String u;
        String v;
        String w;
        String x;
        String y;
        String z;

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return true;
            } else
            {
                a = g1.a("replay", null);
                b = g1.a("card_shown", null);
                c = g1.a("html5_interaction", null);
                d = g1.a("cancel", null);
                e = g1.a("download", null);
                f = g1.a("skip", null);
                g = g1.a("info", null);
                h = g1.a("custom_event", null);
                i = g1.a("midpoint", null);
                j = g1.a("card_dissolved", null);
                k = g1.a("start", null);
                l = g1.a("third_quartile", null);
                m = g1.a("complete", null);
                n = g1.a("continue", null);
                o = g1.a("in_video_engagement", null);
                p = g1.a("reward_v4vc", null);
                r = g1.a("first_quartile", null);
                q = g1.a("v4iap", null);
                s = g1.a("video_expanded", null);
                t = g1.a("sound_mute", null);
                u = g1.a("sound_unmute", null);
                v = g1.a("video_paused", null);
                w = g1.a("video_resumed", null);
                x = g1.a("native_start", null);
                y = g1.a("native_first_quartile", null);
                z = g1.a("native_midpoint", null);
                A = g1.a("native_third_quartile", null);
                B = g1.a("native_complete", null);
                C = g1.a("native_overlay_click", null);
                D.b("replay", a);
                D.b("card_shown", b);
                D.b("html5_interaction", c);
                D.b("cancel", d);
                D.b("download", e);
                D.b("skip", f);
                D.b("info", g);
                D.b("custom_event", h);
                D.b("midpoint", i);
                D.b("card_dissolved", j);
                D.b("start", k);
                D.b("third_quartile", l);
                D.b("complete", m);
                D.b("continue", n);
                D.b("in_video_engagement", o);
                D.b("reward_v4vc", p);
                D.b("first_quartile", r);
                D.b("v4iap", q);
                D.b("video_expanded", s);
                D.b("sound_mute", t);
                D.b("sound_unmute", u);
                D.b("video_paused", v);
                D.b("video_resumed", w);
                D.b("native_start", x);
                D.b("native_first_quartile", y);
                D.b("native_midpoint", z);
                D.b("native_third_quartile", A);
                D.b("native_complete", B);
                D.b("native_overlay_click", C);
                return true;
            }
        }

        b()
        {
            D = new ADCData.g();
        }
    }

    static class c
    {

        boolean a;
        u b;
        s c;

        boolean a()
        {
            if (!b.a())
            {
                return false;
            }
            return c.a();
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.h("enabled");
            if (!a)
            {
                return true;
            }
            b = new u();
            if (!b.a(g1.b("pre_popup")))
            {
                return false;
            }
            c = new s();
            return c.a(g1.b("post_popup"));
        }

        void b()
        {
            if (!a)
            {
                return;
            } else
            {
                b.b();
                c.b();
                return;
            }
        }

        c()
        {
        }
    }

    static class d
    {

        ArrayList a;

        int a()
        {
            return a.size();
        }

        a a(int i1)
        {
            return (a)a.get(i1);
        }

        a a(String s1)
        {
            for (int i1 = 0; i1 < a.size(); i1++)
            {
                a a1 = (a)a.get(i1);
                if (a1.a.equals(s1))
                {
                    return a1;
                }
            }

            return null;
        }

        void a(a a1)
        {
            a.add(a1);
        }

        boolean a(ADCData.c c1)
        {
            if (c1 == null)
            {
                return false;
            }
            for (int i1 = 0; i1 < c1.i(); i1++)
            {
                a a1 = new a();
                if (!a1.a(c1.b(i1)))
                {
                    return false;
                }
                a.add(a1);
            }

            return true;
        }

        a b()
        {
            return (a)a.get(0);
        }

        a b(int i1)
        {
_L7:
            if (i1 >= a.size()) goto _L2; else goto _L1
_L1:
            a a1 = (a)a.get(i1);
            if (!a1.w.a) goto _L4; else goto _L3
_L3:
            return a1;
_L4:
            i1++;
            continue; /* Loop/switch isn't completed */
_L2:
            i1 = 0;
label0:
            do
            {
label1:
                {
                    if (i1 >= a.size())
                    {
                        break label1;
                    }
                    a a2 = (a)a.get(i1);
                    a1 = a2;
                    if (a2.w.a)
                    {
                        break label0;
                    }
                    i1++;
                }
            } while (true);
            if (true) goto _L3; else goto _L5
_L5:
            return null;
            if (true) goto _L7; else goto _L6
_L6:
        }

        d()
        {
            a = new ArrayList();
        }
    }

    static class e
    {

        boolean a;
        boolean b;
        String c;
        String d;
        boolean e;
        boolean f;
        double g;
        String h;
        String i;
        String j;
        f k;
        w l;
        ArrayList m;
        ae n;
        i o;

        void a()
        {
            com.jirbo.adcolony.l.a.b("Caching media");
            if (a)
            {
                int i1 = 0;
                while (i1 < n.a()) 
                {
                    n.a(i1).l();
                    i1++;
                }
            }
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.h("enabled");
            b = g1.h("log_screen_overlay");
            c = g1.e("last_country");
            d = g1.e("last_ip");
            f = g1.h("collect_iap_enabled");
            g = g1.f("media_pool_size");
            h = g1.e("log_level");
            i = g1.e("view_network_pass_filter");
            j = g1.e("cache_network_pass_filter");
            e = g1.h("hardware_acceleration_disabled");
            if (i == null || i.equals(""))
            {
                i = "all";
            }
            if (j == null || j.equals(""))
            {
                j = "all";
            }
            k = new f();
            if (!k.a(g1.b("tracking")))
            {
                return false;
            }
            l = new w();
            if (!l.a(g1.b("third_party_tracking")))
            {
                return false;
            }
            m = g1.d("console_messages");
            com.jirbo.adcolony.l.a.b("Parsing zones");
            n = new ae();
            if (!n.a(g1.c("zones")))
            {
                return false;
            }
            o = new i();
            if (!o.a(g1.b("device")))
            {
                return false;
            } else
            {
                com.jirbo.adcolony.l.a.b("Finished parsing app info");
                return true;
            }
        }

        boolean a(String s1)
        {
            return a(s1, false, true);
        }

        boolean a(String s1, boolean flag, boolean flag1)
        {
            if (!a)
            {
                return false;
            }
            s1 = n.a(s1);
            if (s1 == null)
            {
                return false;
            } else
            {
                return s1.a(flag, flag1);
            }
        }

        e()
        {
            e = false;
        }
    }

    static class f
    {

        String a;
        String b;
        String c;
        String d;
        String e;
        String f;
        String g;
        ADCData.g h;

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return true;
            }
            a = g1.a("update", null);
            b = g1.a("install", null);
            c = g1.a("dynamic_interests", null);
            d = g1.a("user_meta_data", null);
            e = g1.a("in_app_purchase", null);
            g = g1.a("session_end", null);
            f = g1.a("session_start", null);
            h = new ADCData.g();
            h.b("update", a);
            h.b("install", b);
            h.b("dynamic_interests", c);
            h.b("user_meta_data", d);
            h.b("in_app_purchase", e);
            h.b("session_end", g);
            h.b("session_start", f);
            g1 = new com.jirbo.adcolony.f("iap_cache.txt");
            ADCData.c c1 = com.jirbo.adcolony.k.c(g1);
            if (c1 != null)
            {
                for (int i1 = 0; i1 < c1.i(); i1++)
                {
                    ADCData.g g2 = c1.a(i1, new ADCData.g());
                    com.jirbo.adcolony.a.l.d.a("in_app_purchase", g2);
                }

                g1.c();
                com.jirbo.adcolony.a.Z.j();
            }
            com.jirbo.adcolony.a.F = true;
            return true;
        }

        f()
        {
        }
    }

    static class g
    {

        boolean a;
        int b;
        int c;
        int d;
        int e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        String l;
        String m;
        String n;
        String o;
        String p;

        boolean a()
        {
            if (!a)
            {
                return true;
            }
            if (!com.jirbo.adcolony.a.l.c.a(f))
            {
                return false;
            }
            return com.jirbo.adcolony.a.l.c.a(h);
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            } else
            {
                a = g1.a("enabled", true);
                e = g1.g("delay");
                b = g1.g("width");
                c = g1.g("height");
                d = g1.g("scale");
                f = g1.e("image_normal");
                g = g1.e("image_normal_last_modified");
                h = g1.e("image_down");
                i = g1.e("image_down_last_modified");
                j = g1.e("click_action");
                k = g1.e("click_action_type");
                l = g1.e("label");
                m = g1.e("label_rgba");
                n = g1.e("label_shadow_rgba");
                o = g1.e("label_html");
                p = g1.e("event");
                return true;
            }
        }

        void b()
        {
            com.jirbo.adcolony.a.l.c.a(f, g);
            com.jirbo.adcolony.a.l.c.a(h, i);
        }

        g()
        {
        }
    }

    static class h
    {

        String a;
        int b;
        int c;
        boolean d;
        boolean e;
        boolean f;
        double g;
        v h;
        j i;

        boolean a()
        {
            if (i.a && !i.a())
            {
                return false;
            }
            if (!d)
            {
                return true;
            }
            return h.a() || i.a();
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            d = g1.h("enabled");
            if (!d)
            {
                return true;
            }
            a = g1.e("uuid");
            b = g1.g("ad_id");
            c = g1.g("ad_campaign_id");
            e = g1.h("dissolve");
            f = g1.h("enable_in_app_store");
            g = g1.f("dissolve_delay");
            h = new v();
            if (!h.a(g1.b("static")))
            {
                return false;
            }
            i = new j();
            return i.a(g1.b("html5"));
        }

        void b()
        {
            if (!d)
            {
                return;
            } else
            {
                h.b();
                i.b();
                return;
            }
        }

        h()
        {
        }
    }

    static class i
    {

        String a;

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            } else
            {
                a = g1.a("type", null);
                com.jirbo.adcolony.a.X = a;
                return true;
            }
        }

        i()
        {
        }
    }

    static class j
    {

        boolean a;
        double b;
        boolean c;
        boolean d;
        String e;
        o f;
        String g;
        l h;
        g i;
        g j;

        boolean a()
        {
            if (!com.jirbo.adcolony.q.c())
            {
                com.jirbo.adcolony.a.ac = 8;
                return com.jirbo.adcolony.l.c.b("Ad not ready due to no network connection.");
            }
            if (!a)
            {
                return false;
            }
            if (!f.a())
            {
                return false;
            }
            if (!h.a())
            {
                return false;
            }
            if (!i.a())
            {
                return false;
            }
            return j.a();
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.h("enabled");
            b = g1.f("load_timeout");
            c = g1.h("load_timeout_enabled");
            d = g1.h("load_spinner_enabled");
            e = g1.e("background_color");
            g = g1.e("html5_tag");
            f = new o();
            if (!f.a(g1.b("mraid_js")))
            {
                return false;
            }
            h = new l();
            if (!h.a(g1.b("background_logo")))
            {
                return false;
            }
            i = new g();
            if (!i.a(g1.b("replay")))
            {
                return false;
            }
            j = new g();
            return j.a(g1.b("close"));
        }

        void b()
        {
            if (a)
            {
                if (f != null)
                {
                    f.b();
                }
                if (h != null)
                {
                    h.b();
                }
                if (i != null)
                {
                    i.b();
                }
                if (j != null)
                {
                    j.b();
                    return;
                }
            }
        }

        j()
        {
        }
    }

    static class k
    {

        boolean a;
        String b;
        String c;
        String d;

        boolean a()
        {
            if (!a)
            {
                return true;
            }
            return com.jirbo.adcolony.a.l.c.a(c);
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            } else
            {
                a = g1.a("enabled", false);
                c = g1.e("file_url");
                d = g1.e("last_modified");
                return true;
            }
        }

        void b()
        {
            com.jirbo.adcolony.a.l.c.a(c, d);
        }

        k()
        {
        }
    }

    static class l
    {

        int a;
        int b;
        int c;
        String d;
        String e;
        boolean f;

        boolean a()
        {
            if (!f)
            {
                return true;
            } else
            {
                return com.jirbo.adcolony.a.l.c.a(d);
            }
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            f = g1.a("enabled", true);
            a = g1.g("width");
            b = g1.g("height");
            c = g1.g("scale");
            d = g1.e("image");
            e = g1.e("image_last_modified");
            if (e.equals(""))
            {
                e = g1.e("last_modified");
            }
            return true;
        }

        void b()
        {
            com.jirbo.adcolony.a.l.c.a(d, e);
        }

        l()
        {
        }
    }

    static class m
    {

        String a;
        String b;
        String c;
        String d;
        String e;
        String f;
        String g;
        l h;
        g i;
        g j;
        g k;
        g l;
        g m;

        boolean a()
        {
            if (!com.jirbo.adcolony.a.l.c.a(a))
            {
                return false;
            }
            if (!com.jirbo.adcolony.a.l.c.a(c))
            {
                return false;
            }
            if (!com.jirbo.adcolony.a.l.c.a(e))
            {
                return false;
            }
            if (!h.a())
            {
                return false;
            }
            if (!i.a())
            {
                return false;
            }
            if (!j.a())
            {
                return false;
            }
            if (!k.a())
            {
                return false;
            }
            if (!l.a())
            {
                return false;
            }
            return m.a();
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.e("tiny_glow_image");
            b = g1.e("tiny_glow_image_last_modified;");
            c = g1.e("background_bar_image");
            d = g1.e("background_bar_image_last_modified");
            e = g1.e("background_tile_image");
            f = g1.e("background_tile_image_last_modified");
            g = g1.e("background_color");
            h = new l();
            if (!h.a(g1.b("logo")))
            {
                return false;
            }
            h = new l();
            if (!h.a(g1.b("logo")))
            {
                return false;
            }
            i = new g();
            if (!i.a(g1.b("stop")))
            {
                return false;
            }
            j = new g();
            if (!j.a(g1.b("back")))
            {
                return false;
            }
            k = new g();
            if (!k.a(g1.b("close")))
            {
                return false;
            }
            l = new g();
            if (!l.a(g1.b("forward")))
            {
                return false;
            }
            m = new g();
            return m.a(g1.b("reload"));
        }

        void b()
        {
            com.jirbo.adcolony.a.l.c.a(a, b);
            com.jirbo.adcolony.a.l.c.a(c, d);
            com.jirbo.adcolony.a.l.c.a(e, f);
            h.b();
            i.b();
            j.b();
            k.b();
            l.b();
            m.b();
        }

        m()
        {
        }
    }

    static class n
    {

        int a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            } else
            {
                a = g1.g("daily_play_cap");
                b = g1.g("custom_play_cap");
                c = g1.g("custom_play_cap_period");
                d = g1.g("total_play_cap");
                e = g1.g("monthly_play_cap");
                f = g1.g("weekly_play_cap");
                g = g1.g("volatile_expiration");
                h = g1.g("volatile_play_cap");
                return true;
            }
        }

        n()
        {
        }
    }

    static class o
    {

        boolean a;
        String b;
        String c;

        boolean a()
        {
            if (!a)
            {
                return true;
            }
            return com.jirbo.adcolony.a.l.c.a(b);
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.h("enabled");
            if (!a)
            {
                return true;
            } else
            {
                b = g1.e("url");
                c = g1.e("last_modified");
                return true;
            }
        }

        void b()
        {
            com.jirbo.adcolony.a.l.c.a(b, c);
        }

        o()
        {
        }
    }

    static class p
    {

        boolean a;
        boolean b;
        String c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;
        q j;
        l k;
        l l;

        boolean a()
        {
            if (!a)
            {
                return false;
            }
            if (!com.jirbo.adcolony.a.l.c.a(c))
            {
                return false;
            }
            if (!com.jirbo.adcolony.a.l.c.a(g))
            {
                return false;
            }
            if (!k.a())
            {
                return false;
            }
            return l.a();
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.h("enabled");
            c = g1.e("poster_image");
            d = g1.e("advertiser_name");
            e = g1.e("description");
            f = g1.e("title");
            g = g1.e("thumb_image");
            h = g1.e("poster_image_last_modified");
            i = g1.e("thumb_image_last_modified");
            k = new l();
            if (!k.a(g1.b("mute")))
            {
                return false;
            }
            b = k.f;
            l = new l();
            if (!l.a(g1.b("unmute")))
            {
                return false;
            }
            j = new q();
            return j.a(g1.b("overlay"));
        }

        void b()
        {
            com.jirbo.adcolony.a.l.c.a(c, h);
            com.jirbo.adcolony.a.l.c.a(g, i);
            k.b();
            l.b();
        }

        p()
        {
        }
    }

    static class q
    {

        boolean a;
        boolean b;
        String c;
        String d;
        String e;

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.h("enabled");
            if (!a)
            {
                return true;
            } else
            {
                b = g1.h("in_app");
                c = g1.e("click_action_type");
                e = g1.e("click_action");
                d = g1.e("label");
                return true;
            }
        }

        q()
        {
        }
    }

    static class r
    {

        int a;
        String b;
        int c;
        int d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        l l;
        g m;

        boolean a()
        {
            if (!com.jirbo.adcolony.a.l.c.a(e))
            {
                return false;
            }
            if (!l.a())
            {
                return false;
            }
            return m.a();
        }

        boolean a(ADCData.g g1)
        {
            a = g1.g("scale");
            b = g1.e("label_reward");
            c = g1.g("width");
            d = g1.g("height");
            e = g1.e("image");
            f = g1.e("image_last_modified");
            g = g1.e("label");
            h = g1.e("label_rgba");
            i = g1.e("label_shadow_rgba");
            j = g1.e("label_fraction");
            k = g1.e("label_html");
            l = new l();
            if (!l.a(g1.b("logo")))
            {
                return false;
            }
            m = new g();
            return m.a(g1.b("option_done"));
        }

        void b()
        {
            com.jirbo.adcolony.a.l.c.a(e, f);
            l.b();
            m.b();
        }

        r()
        {
        }
    }

    static class s
    {

        String a;
        String b;
        l c;
        r d;

        boolean a()
        {
            if (!com.jirbo.adcolony.a.l.c.a(a))
            {
                return false;
            }
            if (!c.a())
            {
                return false;
            }
            return d.a();
        }

        boolean a(ADCData.g g1)
        {
            a = g1.e("background_image");
            b = g1.e("background_image_last_modified");
            c = new l();
            if (!c.a(g1.b("background_logo")))
            {
                return false;
            }
            d = new r();
            return d.a(g1.b("dialog"));
        }

        void b()
        {
            com.jirbo.adcolony.a.l.c.a(a, b);
            d.b();
        }

        s()
        {
        }
    }

    static class t
    {

        int a;
        String b;
        int c;
        int d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        l l;
        g m;
        g n;

        boolean a()
        {
            if (!com.jirbo.adcolony.a.l.c.a(e))
            {
                return false;
            }
            if (!l.a())
            {
                return false;
            }
            return m.a();
        }

        boolean a(ADCData.g g1)
        {
            a = g1.g("scale");
            b = g1.e("label_reward");
            c = g1.g("width");
            d = g1.g("height");
            e = g1.e("image");
            f = g1.e("image_last_modified");
            g = g1.e("label");
            h = g1.e("label_rgba");
            i = g1.e("label_shadow_rgba");
            j = g1.e("label_fraction");
            k = g1.e("label_html");
            l = new l();
            if (!l.a(g1.b("logo")))
            {
                return false;
            }
            m = new g();
            if (!m.a(g1.b("option_yes")))
            {
                return false;
            }
            n = new g();
            return n.a(g1.b("option_no"));
        }

        void b()
        {
            com.jirbo.adcolony.a.l.c.a(e, f);
            l.b();
            m.b();
            n.b();
        }

        t()
        {
        }
    }

    static class u
    {

        String a;
        String b;
        l c;
        t d;

        boolean a()
        {
            if (!com.jirbo.adcolony.a.l.c.a(a))
            {
                return false;
            }
            if (!c.a())
            {
                return false;
            }
            return d.a();
        }

        boolean a(ADCData.g g1)
        {
            a = g1.e("background_image");
            b = g1.e("background_image_last_modified");
            c = new l();
            if (!c.a(g1.b("background_logo")))
            {
                return false;
            }
            d = new t();
            return d.a(g1.b("dialog"));
        }

        void b()
        {
            com.jirbo.adcolony.a.l.c.a(a, b);
            c.b();
            d.b();
        }

        u()
        {
        }
    }

    static class v
    {

        boolean a;
        int b;
        int c;
        String d;
        String e;
        g f;
        g g;
        g h;
        g i;

        boolean a()
        {
            if (!a)
            {
                return true;
            }
            if (!com.jirbo.adcolony.a.l.c.a(d))
            {
                return false;
            }
            if (!h.a())
            {
                return false;
            }
            if (!i.a())
            {
                return false;
            }
            if (!g.a())
            {
                return false;
            }
            return f.a();
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            a = g1.h("enabled");
            if (!a)
            {
                return true;
            }
            b = g1.g("width");
            c = g1.g("height");
            d = g1.e("background_image");
            e = g1.e("background_image_last_modified");
            if (com.jirbo.adcolony.a.f != null)
            {
                d = com.jirbo.adcolony.a.f;
            }
            h = new g();
            if (!h.a(g1.b("replay")))
            {
                return false;
            }
            i = new g();
            if (!i.a(g1.b("continue")))
            {
                return false;
            }
            g = new g();
            if (!g.a(g1.b("download")))
            {
                return false;
            }
            f = new g();
            return f.a(g1.b("info"));
        }

        void b()
        {
            if (!a)
            {
                return;
            } else
            {
                com.jirbo.adcolony.a.l.c.a(d, e);
                h.b();
                i.b();
                g.b();
                f.b();
                return;
            }
        }

        v()
        {
        }
    }

    static class w
    {

        ArrayList a;
        ArrayList b;
        ArrayList c;
        HashMap d;

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            ArrayList arraylist = g1.d("update");
            a = arraylist;
            if (arraylist == null)
            {
                return false;
            }
            arraylist = g1.d("install");
            b = arraylist;
            if (arraylist == null)
            {
                return false;
            }
            g1 = g1.d("session_start");
            c = g1;
            if (g1 == null)
            {
                return false;
            } else
            {
                d.put("update", a);
                d.put("install", b);
                d.put("session_start", c);
                return true;
            }
        }

        w()
        {
            a = new ArrayList();
            b = new ArrayList();
            c = new ArrayList();
            d = new HashMap();
        }
    }

    static class x
    {

        ArrayList A;
        ArrayList B;
        HashMap C;
        ArrayList a;
        ArrayList b;
        ArrayList c;
        ArrayList d;
        ArrayList e;
        ArrayList f;
        ArrayList g;
        ArrayList h;
        ArrayList i;
        ArrayList j;
        ArrayList k;
        ArrayList l;
        ArrayList m;
        ArrayList n;
        ArrayList o;
        ArrayList p;
        ArrayList q;
        ArrayList r;
        ArrayList s;
        ArrayList t;
        ArrayList u;
        ArrayList v;
        ArrayList w;
        ArrayList x;
        ArrayList y;
        ArrayList z;

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            } else
            {
                a = g1.d("replay");
                b = g1.d("card_shown");
                c = g1.d("html5_interaction");
                d = g1.d("cancel");
                e = g1.d("download");
                f = g1.d("skip");
                g = g1.d("info");
                h = g1.d("midpoint");
                i = g1.d("card_dissolved");
                j = g1.d("start");
                k = g1.d("third_quartile");
                l = g1.d("complete");
                m = g1.d("continue");
                n = g1.d("in_video_engagement");
                o = g1.d("reward_v4vc");
                p = g1.d("first_quartile");
                q = g1.d("v4iap");
                r = g1.d("video_expanded");
                s = g1.d("sound_mute");
                t = g1.d("sound_unmute");
                u = g1.d("video_paused");
                v = g1.d("video_resumed");
                w = g1.d("native_start");
                x = g1.d("native_first_quartile");
                y = g1.d("native_midpoint");
                z = g1.d("native_third_quartile");
                A = g1.d("native_complete");
                B = g1.d("native_overlay_click");
                C.put("replay", a);
                C.put("card_shown", b);
                C.put("html5_interaction", c);
                C.put("cancel", d);
                C.put("download", e);
                C.put("skip", f);
                C.put("info", g);
                C.put("midpoint", h);
                C.put("card_dissolved", i);
                C.put("start", j);
                C.put("third_quartile", k);
                C.put("complete", l);
                C.put("continue", m);
                C.put("in_video_engagement", n);
                C.put("reward_v4vc", o);
                C.put("first_quartile", p);
                C.put("v4iap", q);
                C.put("video_expanded", r);
                C.put("sound_mute", s);
                C.put("sound_unmute", t);
                C.put("video_paused", u);
                C.put("video_resumed", v);
                C.put("native_start", w);
                C.put("native_first_quartile", x);
                C.put("native_midpoint", y);
                C.put("native_third_quartile", z);
                C.put("native_complete", A);
                C.put("native_overlay_click", B);
                return true;
            }
        }

        x()
        {
            a = new ArrayList();
            b = new ArrayList();
            c = new ArrayList();
            d = new ArrayList();
            e = new ArrayList();
            f = new ArrayList();
            g = new ArrayList();
            h = new ArrayList();
            i = new ArrayList();
            j = new ArrayList();
            k = new ArrayList();
            l = new ArrayList();
            m = new ArrayList();
            n = new ArrayList();
            o = new ArrayList();
            p = new ArrayList();
            q = new ArrayList();
            r = new ArrayList();
            s = new ArrayList();
            t = new ArrayList();
            u = new ArrayList();
            v = new ArrayList();
            w = new ArrayList();
            x = new ArrayList();
            y = new ArrayList();
            z = new ArrayList();
            A = new ArrayList();
            B = new ArrayList();
            C = new HashMap();
        }
    }

    static class y
    {

        String a;
        String b;
        boolean c;

        boolean a()
        {
            return true;
        }

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            }
            c = g1.h("enabled");
            if (!c)
            {
                return true;
            } else
            {
                a = (String)g1.d("product_ids").get(0);
                b = g1.e("in_progress");
                return true;
            }
        }

        y()
        {
        }
    }

    static class z
    {

        int a;
        int b;
        int c;

        boolean a(ADCData.g g1)
        {
            if (g1 == null)
            {
                return false;
            } else
            {
                a = g1.g("daily_play_cap");
                b = g1.g("custom_play_cap");
                c = g1.g("custom_play_cap_period");
                return true;
            }
        }

        z()
        {
        }
    }


    com.jirbo.adcolony.n()
    {
    }
}
