// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package c.m.x.a.gv;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package c.m.x.a.gv:
//            i, k, d, g, 
//            ac, s, m, o, 
//            b, a, u, t, 
//            h, l, ab

final class j extends i
{

    static final Interpolator A = new DecelerateInterpolator(1.5F);
    static final Interpolator B = new AccelerateInterpolator(2.5F);
    static final Interpolator C = new AccelerateInterpolator(1.5F);
    static boolean a = false;
    static final boolean b;
    static final Interpolator z = new DecelerateInterpolator(2.5F);
    ArrayList c;
    Runnable d[];
    boolean e;
    ArrayList f;
    ArrayList g;
    ArrayList h;
    ArrayList i;
    ArrayList j;
    ArrayList k;
    ArrayList l;
    ArrayList m;
    int n;
    g o;
    h p;
    d q;
    boolean r;
    boolean s;
    boolean t;
    String u;
    boolean v;
    Bundle w;
    SparseArray x;
    Runnable y;

    j()
    {
        n = 0;
        w = null;
        x = null;
        y = new k(this);
    }

    private static Animation a(float f1, float f2)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(f1, f2);
        alphaanimation.setInterpolator(A);
        alphaanimation.setDuration(220L);
        return alphaanimation;
    }

    private static Animation a(float f1, float f2, float f3, float f4)
    {
        AnimationSet animationset = new AnimationSet(false);
        Object obj = new ScaleAnimation(f1, f2, f1, f2, 1, 0.5F, 1, 0.5F);
        ((ScaleAnimation) (obj)).setInterpolator(z);
        ((ScaleAnimation) (obj)).setDuration(220L);
        animationset.addAnimation(((Animation) (obj)));
        obj = new AlphaAnimation(f3, f4);
        ((AlphaAnimation) (obj)).setInterpolator(A);
        ((AlphaAnimation) (obj)).setDuration(220L);
        animationset.addAnimation(((Animation) (obj)));
        return animationset;
    }

    private Animation a(d d1, int i1, boolean flag, int j1)
    {
        Animation animation = d1.onCreateAnimation(i1, flag, d1.mNextAnim);
        if (animation == null) goto _L2; else goto _L1
_L1:
        d1 = animation;
_L4:
        return d1;
_L2:
        if (d1.mNextAnim == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        animation = AnimationUtils.loadAnimation(o, d1.mNextAnim);
        d1 = animation;
        if (animation != null) goto _L4; else goto _L3
_L3:
        byte byte0;
        if (i1 == 0)
        {
            return null;
        }
        byte0 = -1;
        i1;
        JVM INSTR lookupswitch 3: default 96
    //                   4097: 105
    //                   4099: 133
    //                   8194: 119;
           goto _L5 _L6 _L7 _L8
_L5:
        i1 = byte0;
_L10:
        if (i1 < 0)
        {
            return null;
        }
        break; /* Loop/switch isn't completed */
_L6:
        if (flag)
        {
            i1 = 1;
        } else
        {
            i1 = 2;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (flag)
        {
            i1 = 3;
        } else
        {
            i1 = 4;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if (flag)
        {
            i1 = 5;
        } else
        {
            i1 = 6;
        }
        if (true) goto _L10; else goto _L9
_L9:
        switch (i1)
        {
        default:
            if (j1 == 0 && o.getWindow() != null)
            {
                i1 = o.getWindow().getAttributes().windowAnimations;
            } else
            {
                i1 = j1;
            }
            if (i1 == 0)
            {
                return null;
            } else
            {
                return null;
            }

        case 1: // '\001'
            d1 = o;
            return a(1.125F, 1.0F, 0.0F, 1.0F);

        case 2: // '\002'
            d1 = o;
            return a(1.0F, 0.975F, 1.0F, 0.0F);

        case 3: // '\003'
            d1 = o;
            return a(0.975F, 1.0F, 0.0F, 1.0F);

        case 4: // '\004'
            d1 = o;
            return a(1.0F, 1.075F, 1.0F, 0.0F);

        case 5: // '\005'
            d1 = o;
            return a(0.0F, 1.0F);

        case 6: // '\006'
            d1 = o;
            return a(1.0F, 0.0F);
        }
    }

    private d a(Bundle bundle, String s1)
    {
        int i1 = bundle.getInt(s1, -1);
        if (i1 == -1)
        {
            bundle = null;
        } else
        {
            if (i1 >= f.size())
            {
                a(((RuntimeException) (new IllegalStateException((new StringBuilder("Fragement no longer exists for key ")).append(s1).append(": index ").append(i1).toString()))));
            }
            d d1 = (d)f.get(i1);
            bundle = d1;
            if (d1 == null)
            {
                a(((RuntimeException) (new IllegalStateException((new StringBuilder("Fragement no longer exists for key ")).append(s1).append(": index ").append(i1).toString()))));
                return d1;
            }
        }
        return bundle;
    }

    private void a(int i1, a a1)
    {
        this;
        JVM INSTR monitorenter ;
        int k1;
        if (k == null)
        {
            k = new ArrayList();
        }
        k1 = k.size();
        int j1 = k1;
        if (i1 >= k1) goto _L2; else goto _L1
_L1:
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("Setting back stack index ")).append(i1).append(" to ").append(a1).toString());
        }
        k.set(i1, a1);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        k.add(null);
        if (l == null)
        {
            l = new ArrayList();
        }
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("Adding available back stack index ")).append(j1).toString());
        }
        l.add(Integer.valueOf(j1));
        j1++;
        if (true) goto _L2; else goto _L3
_L3:
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("Adding back stack index ")).append(i1).append(" with ").append(a1).toString());
        }
        k.add(a1);
          goto _L4
        a1;
        throw a1;
    }

    private void a(RuntimeException runtimeexception)
    {
        Log.e("FragmentManager", runtimeexception.getMessage());
        Log.e("FragmentManager", "Activity state:");
        Object obj = new PrintWriter(new ac("FragmentManager"));
        if (o != null)
        {
            try
            {
                o.dump("  ", null, ((PrintWriter) (obj)), new String[0]);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("FragmentManager", "Failed dumping state", ((Throwable) (obj)));
            }
        } else
        {
            try
            {
                a("  ", ((FileDescriptor) (null)), ((PrintWriter) (obj)), new String[0]);
            }
            catch (Exception exception)
            {
                Log.e("FragmentManager", "Failed dumping state", exception);
            }
        }
        throw runtimeexception;
    }

    public static int c(int i1)
    {
        switch (i1)
        {
        default:
            return 0;

        case 4097: 
            return 8194;

        case 8194: 
            return 4097;

        case 4099: 
            return 4099;
        }
    }

    private void c(d d1)
    {
        if (d1.mInnerView != null)
        {
            if (x == null)
            {
                x = new SparseArray();
            } else
            {
                x.clear();
            }
            d1.mInnerView.saveHierarchyState(x);
            if (x.size() > 0)
            {
                d1.mSavedViewState = x;
                x = null;
                return;
            }
        }
    }

    private void d(int i1)
    {
        a(i1, 0, 0, false);
    }

    private void q()
    {
        if (m != null)
        {
            for (int i1 = 0; i1 < m.size(); i1++)
            {
                m.get(i1);
            }

        }
    }

    public final d a(int i1)
    {
        if (g == null) goto _L2; else goto _L1
_L1:
        int j1 = g.size() - 1;
_L11:
        if (j1 < 0) goto _L2; else goto _L3
_L3:
        d d1 = (d)g.get(j1);
        if (d1 == null || d1.mFragmentId != i1) goto _L5; else goto _L4
_L4:
        return d1;
_L5:
        j1--;
        continue; /* Loop/switch isn't completed */
_L2:
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        j1 = f.size() - 1;
_L9:
        if (j1 < 0) goto _L7; else goto _L6
_L6:
        d d2;
        d2 = (d)f.get(j1);
        if (d2 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        d1 = d2;
        if (d2.mFragmentId == i1) goto _L4; else goto _L8
_L8:
        j1--;
          goto _L9
_L7:
        return null;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public final d a(String s1)
    {
        if (g == null || s1 == null) goto _L2; else goto _L1
_L1:
        int i1 = g.size() - 1;
_L11:
        if (i1 < 0) goto _L2; else goto _L3
_L3:
        d d1 = (d)g.get(i1);
        if (d1 == null || !s1.equals(d1.mTag)) goto _L5; else goto _L4
_L4:
        return d1;
_L5:
        i1--;
        continue; /* Loop/switch isn't completed */
_L2:
        if (f == null || s1 == null)
        {
            break MISSING_BLOCK_LABEL_132;
        }
        i1 = f.size() - 1;
_L9:
        if (i1 < 0) goto _L7; else goto _L6
_L6:
        d d2;
        d2 = (d)f.get(i1);
        if (d2 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        d1 = d2;
        if (s1.equals(d2.mTag)) goto _L4; else goto _L8
_L8:
        i1--;
          goto _L9
_L7:
        return null;
        if (true) goto _L11; else goto _L10
_L10:
    }

    final void a(int i1, int j1, int k1, boolean flag)
    {
        if (o == null && i1 != 0)
        {
            throw new IllegalStateException("No activity");
        }
        if (flag || n != i1)
        {
            n = i1;
            if (f != null)
            {
                int l1 = 0;
                boolean flag1 = false;
                for (; l1 < f.size(); l1++)
                {
                    d d1 = (d)f.get(l1);
                    if (d1 == null)
                    {
                        continue;
                    }
                    a(d1, i1, j1, k1, false);
                    if (d1.mLoaderManager != null)
                    {
                        flag1 = d1.mLoaderManager.a() | flag1;
                    }
                }

                if (!flag1)
                {
                    b();
                }
                if (r && o != null && n == 5)
                {
                    o.a();
                    r = false;
                    return;
                }
            }
        }
    }

    public final void a(Configuration configuration)
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                d d1 = (d)g.get(i1);
                if (d1 != null)
                {
                    d1.performConfigurationChanged(configuration);
                }
            }

        }
    }

    final void a(Parcelable parcelable, ArrayList arraylist)
    {
        if (parcelable != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (((m) (parcelable = (m)parcelable)).a != null)
        {
            if (arraylist != null)
            {
                for (int i1 = 0; i1 < arraylist.size(); i1++)
                {
                    d d1 = (d)arraylist.get(i1);
                    if (a)
                    {
                        Log.v("FragmentManager", (new StringBuilder("restoreAllState: re-attaching retained ")).append(d1).toString());
                    }
                    o o2 = ((m) (parcelable)).a[d1.mIndex];
                    o2.k = d1;
                    d1.mSavedViewState = null;
                    d1.mBackStackNesting = 0;
                    d1.mInLayout = false;
                    d1.mAdded = false;
                    d1.mTarget = null;
                    if (o2.j != null)
                    {
                        o2.j.setClassLoader(o.getClassLoader());
                        d1.mSavedViewState = o2.j.getSparseParcelableArray("android:view_state");
                    }
                }

            }
            f = new ArrayList(((m) (parcelable)).a.length);
            if (h != null)
            {
                h.clear();
            }
            int j1 = 0;
            while (j1 < ((m) (parcelable)).a.length) 
            {
                o o1 = ((m) (parcelable)).a[j1];
                if (o1 != null)
                {
                    d d3 = o1.a(o, q);
                    if (a)
                    {
                        Log.v("FragmentManager", (new StringBuilder("restoreAllState: active #")).append(j1).append(": ").append(d3).toString());
                    }
                    f.add(d3);
                    o1.k = null;
                } else
                {
                    f.add(null);
                    if (h == null)
                    {
                        h = new ArrayList();
                    }
                    if (a)
                    {
                        Log.v("FragmentManager", (new StringBuilder("restoreAllState: avail #")).append(j1).toString());
                    }
                    h.add(Integer.valueOf(j1));
                }
                j1++;
            }
            if (arraylist != null)
            {
                int k1 = 0;
                while (k1 < arraylist.size()) 
                {
                    d d2 = (d)arraylist.get(k1);
                    if (d2.mTargetIndex >= 0)
                    {
                        if (d2.mTargetIndex < f.size())
                        {
                            d2.mTarget = (d)f.get(d2.mTargetIndex);
                        } else
                        {
                            Log.w("FragmentManager", (new StringBuilder("Re-attaching retained fragment ")).append(d2).append(" target no longer exists: ").append(d2.mTargetIndex).toString());
                            d2.mTarget = null;
                        }
                    }
                    k1++;
                }
            }
            if (((m) (parcelable)).b != null)
            {
                g = new ArrayList(((m) (parcelable)).b.length);
                for (int l1 = 0; l1 < ((m) (parcelable)).b.length; l1++)
                {
                    arraylist = (d)f.get(((m) (parcelable)).b[l1]);
                    if (arraylist == null)
                    {
                        a(((RuntimeException) (new IllegalStateException((new StringBuilder("No instantiated fragment for index #")).append(((m) (parcelable)).b[l1]).toString()))));
                    }
                    arraylist.mAdded = true;
                    if (a)
                    {
                        Log.v("FragmentManager", (new StringBuilder("restoreAllState: added #")).append(l1).append(": ").append(arraylist).toString());
                    }
                    if (g.contains(arraylist))
                    {
                        throw new IllegalStateException("Already added!");
                    }
                    g.add(arraylist);
                }

            } else
            {
                g = null;
            }
            if (((m) (parcelable)).c != null)
            {
                i = new ArrayList(((m) (parcelable)).c.length);
                int i2 = 0;
                while (i2 < ((m) (parcelable)).c.length) 
                {
                    arraylist = ((m) (parcelable)).c[i2].a(this);
                    if (a)
                    {
                        Log.v("FragmentManager", (new StringBuilder("restoreAllState: back stack #")).append(i2).append(" (index ").append(((a) (arraylist)).o).append("): ").append(arraylist).toString());
                        arraylist.a("  ", new PrintWriter(new ac("FragmentManager")), false);
                    }
                    i.add(arraylist);
                    if (((a) (arraylist)).o >= 0)
                    {
                        a(((a) (arraylist)).o, ((a) (arraylist)));
                    }
                    i2++;
                }
            } else
            {
                i = null;
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    final void a(a a1)
    {
        if (i == null)
        {
            i = new ArrayList();
        }
        i.add(a1);
        q();
    }

    public final void a(d d1)
    {
label0:
        {
            if (d1.mDeferStart)
            {
                if (!e)
                {
                    break label0;
                }
                v = true;
            }
            return;
        }
        d1.mDeferStart = false;
        a(d1, n, 0, 0, false);
    }

    public final void a(d d1, int i1, int j1)
    {
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("remove: ")).append(d1).append(" nesting=").append(d1.mBackStackNesting).toString());
        }
        int k1;
        if (!d1.isInBackStack())
        {
            k1 = 1;
        } else
        {
            k1 = 0;
        }
        if (!d1.mDetached || k1 != 0)
        {
            if (g != null)
            {
                g.remove(d1);
            }
            if (d1.mHasMenu && d1.mMenuVisible)
            {
                r = true;
            }
            d1.mAdded = false;
            d1.mRemoving = true;
            if (k1 != 0)
            {
                k1 = 0;
            } else
            {
                k1 = 1;
            }
            a(d1, k1, i1, j1, false);
        }
    }

    final void a(d d1, int i1, int j1, int k1, boolean flag)
    {
        if ((!d1.mAdded || d1.mDetached) && i1 > 1)
        {
            i1 = 1;
        }
        int l1 = i1;
        if (d1.mRemoving)
        {
            l1 = i1;
            if (i1 > d1.mState)
            {
                l1 = d1.mState;
            }
        }
        Object obj;
        Object obj1;
        if (d1.mDeferStart && d1.mState < 4 && l1 > 3)
        {
            i1 = 3;
        } else
        {
            i1 = l1;
        }
        if (d1.mState >= i1) goto _L2; else goto _L1
_L1:
        if (d1.mFromLayout && !d1.mInLayout)
        {
            return;
        }
        if (d1.mAnimatingAway != null)
        {
            d1.mAnimatingAway = null;
            a(d1, d1.mStateAfterAnimating, 0, 0, true);
        }
        d1.mState;
        JVM INSTR tableswitch 0 4: default 156
    //                   0 162
    //                   1 1552
    //                   2 1549
    //                   3 1549
    //                   4 1544;
           goto _L3 _L4 _L5 _L6 _L6 _L7
_L3:
        d1.mState = i1;
        return;
_L4:
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("moveto CREATED: ")).append(d1).toString());
        }
        if (d1.mSavedFragmentState != null)
        {
            d1.mSavedViewState = d1.mSavedFragmentState.getSparseParcelableArray("android:view_state");
            d1.mTarget = a(d1.mSavedFragmentState, "android:target_state");
            if (d1.mTarget != null)
            {
                d1.mTargetRequestCode = d1.mSavedFragmentState.getInt("android:target_req_state", 0);
            }
            d1.mUserVisibleHint = d1.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
            if (!d1.mUserVisibleHint)
            {
                d1.mDeferStart = true;
                if (i1 > 3)
                {
                    i1 = 3;
                }
            }
        }
        d1.mActivity = o;
        d1.mParentFragment = q;
        if (q != null)
        {
            obj = q.mChildFragmentManager;
        } else
        {
            obj = o.b;
        }
        d1.mFragmentManager = ((j) (obj));
        d1.mCalled = false;
        d1.onAttach(o);
        if (!d1.mCalled)
        {
            throw new u((new StringBuilder("Fragment ")).append(d1).append(" did not call through to super.onAttach()").toString());
        }
        if (d1.mParentFragment == null)
        {
            obj = o;
            c.m.x.a.gv.g.b();
        }
        if (!d1.mRetaining)
        {
            d1.performCreate(d1.mSavedFragmentState);
        }
        d1.mRetaining = false;
        if (d1.mFromLayout)
        {
            d1.mView = d1.performCreateView(d1.getLayoutInflater(d1.mSavedFragmentState), null, d1.mSavedFragmentState);
            if (d1.mView != null)
            {
                d1.mInnerView = d1.mView;
                d1.mView = c.m.x.a.gv.t.a(d1.mView);
                if (d1.mHidden)
                {
                    d1.mView.setVisibility(8);
                }
                d1.onViewCreated(d1.mView, d1.mSavedFragmentState);
            } else
            {
                d1.mInnerView = null;
            }
        }
_L5:
        if (i1 > 1)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder("moveto ACTIVITY_CREATED: ")).append(d1).toString());
            }
            if (!d1.mFromLayout)
            {
                if (d1.mContainerId != 0)
                {
                    obj1 = (ViewGroup)p.a(d1.mContainerId);
                    obj = obj1;
                    if (obj1 == null)
                    {
                        obj = obj1;
                        if (!d1.mRestored)
                        {
                            a(((RuntimeException) (new IllegalArgumentException((new StringBuilder("No view found for id 0x")).append(Integer.toHexString(d1.mContainerId)).append(" (").append(d1.getResources().getResourceName(d1.mContainerId)).append(") for fragment ").append(d1).toString()))));
                            obj = obj1;
                        }
                    }
                } else
                {
                    obj = null;
                }
                d1.mContainer = ((ViewGroup) (obj));
                d1.mView = d1.performCreateView(d1.getLayoutInflater(d1.mSavedFragmentState), ((ViewGroup) (obj)), d1.mSavedFragmentState);
                if (d1.mView != null)
                {
                    d1.mInnerView = d1.mView;
                    d1.mView = c.m.x.a.gv.t.a(d1.mView);
                    if (obj != null)
                    {
                        obj1 = a(d1, j1, true, k1);
                        if (obj1 != null)
                        {
                            d1.mView.startAnimation(((Animation) (obj1)));
                        }
                        ((ViewGroup) (obj)).addView(d1.mView);
                    }
                    if (d1.mHidden)
                    {
                        d1.mView.setVisibility(8);
                    }
                    d1.onViewCreated(d1.mView, d1.mSavedFragmentState);
                } else
                {
                    d1.mInnerView = null;
                }
            }
            d1.performActivityCreated(d1.mSavedFragmentState);
            if (d1.mView != null)
            {
                d1.restoreViewState(d1.mSavedFragmentState);
            }
            d1.mSavedFragmentState = null;
        }
_L6:
        j1 = i1;
        if (i1 > 3)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder("moveto STARTED: ")).append(d1).toString());
            }
            d1.performStart();
            j1 = i1;
        }
_L15:
        i1 = j1;
        if (j1 > 4)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder("moveto RESUMED: ")).append(d1).toString());
            }
            d1.mResumed = true;
            d1.performResume();
            d1.mSavedFragmentState = null;
            d1.mSavedViewState = null;
            i1 = j1;
        }
          goto _L3
_L2:
        if (d1.mState <= i1) goto _L3; else goto _L8
_L8:
        d1.mState;
        JVM INSTR tableswitch 1 5: default 968
    //                   1 971
    //                   2 1141
    //                   3 1103
    //                   4 1065
    //                   5 1022;
           goto _L3 _L9 _L10 _L11 _L12 _L13
_L9:
        if (i1 <= 0)
        {
            if (t && d1.mAnimatingAway != null)
            {
                obj = d1.mAnimatingAway;
                d1.mAnimatingAway = null;
                ((View) (obj)).clearAnimation();
            }
            if (d1.mAnimatingAway != null)
            {
                d1.mStateAfterAnimating = i1;
                i1 = 1;
            } else
            {
                if (a)
                {
                    Log.v("FragmentManager", (new StringBuilder("movefrom CREATED: ")).append(d1).toString());
                }
                if (!d1.mRetaining)
                {
                    d1.performDestroy();
                }
                d1.mCalled = false;
                d1.onDetach();
                if (!d1.mCalled)
                {
                    throw new u((new StringBuilder("Fragment ")).append(d1).append(" did not call through to super.onDetach()").toString());
                }
                if (!flag)
                {
                    if (!d1.mRetaining)
                    {
                        if (d1.mIndex >= 0)
                        {
                            if (a)
                            {
                                Log.v("FragmentManager", (new StringBuilder("Freeing fragment index ")).append(d1).toString());
                            }
                            f.set(d1.mIndex, null);
                            if (h == null)
                            {
                                h = new ArrayList();
                            }
                            h.add(Integer.valueOf(d1.mIndex));
                            o.a(d1.mWho);
                            d1.initState();
                        }
                    } else
                    {
                        d1.mActivity = null;
                        d1.mFragmentManager = null;
                    }
                }
            }
        }
          goto _L3
_L13:
        if (i1 < 5)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder("movefrom RESUMED: ")).append(d1).toString());
            }
            d1.performPause();
            d1.mResumed = false;
        }
_L12:
        if (i1 < 4)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder("movefrom STARTED: ")).append(d1).toString());
            }
            d1.performStop();
        }
_L11:
        if (i1 < 3)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder("movefrom STOPPED: ")).append(d1).toString());
            }
            d1.performReallyStop();
        }
_L10:
        if (i1 >= 2) goto _L9; else goto _L14
_L14:
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("movefrom ACTIVITY_CREATED: ")).append(d1).toString());
        }
        if (d1.mView != null && !o.isFinishing() && d1.mSavedViewState == null)
        {
            c(d1);
        }
        d1.performDestroyView();
        if (d1.mView != null && d1.mContainer != null)
        {
            if (n > 0 && !t)
            {
                obj = a(d1, j1, false, k1);
            } else
            {
                obj = null;
            }
            if (obj != null)
            {
                d1.mAnimatingAway = d1.mView;
                d1.mStateAfterAnimating = i1;
                ((Animation) (obj)).setAnimationListener(new l(this, d1));
                d1.mView.startAnimation(((Animation) (obj)));
            }
            d1.mContainer.removeView(d1.mView);
        }
        d1.mContainer = null;
        d1.mView = null;
        d1.mInnerView = null;
          goto _L9
_L7:
        j1 = i1;
          goto _L15
    }

    public final void a(d d1, boolean flag)
    {
        if (g == null)
        {
            g = new ArrayList();
        }
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("add: ")).append(d1).toString());
        }
        if (d1.mIndex < 0)
        {
            if (h == null || h.size() <= 0)
            {
                if (f == null)
                {
                    f = new ArrayList();
                }
                d1.setIndex(f.size(), q);
                f.add(d1);
            } else
            {
                d1.setIndex(((Integer)h.remove(h.size() - 1)).intValue(), q);
                f.set(d1.mIndex, d1);
            }
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder("Allocated fragment index ")).append(d1).toString());
            }
        }
        if (!d1.mDetached)
        {
            if (g.contains(d1))
            {
                throw new IllegalStateException((new StringBuilder("Fragment already added: ")).append(d1).toString());
            }
            g.add(d1);
            d1.mAdded = true;
            d1.mRemoving = false;
            if (d1.mHasMenu && d1.mMenuVisible)
            {
                r = true;
            }
            if (flag)
            {
                b(d1);
            }
        }
    }

    public final void a(g g1, h h1, d d1)
    {
        if (o != null)
        {
            throw new IllegalStateException("Already attached");
        } else
        {
            o = g1;
            p = h1;
            q = d1;
            return;
        }
    }

    public final void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        String s2 = (new StringBuilder()).append(s1).append("    ").toString();
        if (f != null)
        {
            int k2 = f.size();
            if (k2 > 0)
            {
                printwriter.print(s1);
                printwriter.print("Active Fragments in ");
                printwriter.print(Integer.toHexString(System.identityHashCode(this)));
                printwriter.println(":");
                for (int i1 = 0; i1 < k2; i1++)
                {
                    d d1 = (d)f.get(i1);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(i1);
                    printwriter.print(": ");
                    printwriter.println(d1);
                    if (d1 != null)
                    {
                        d1.dump(s2, filedescriptor, printwriter, as);
                    }
                }

            }
        }
        if (g != null)
        {
            int l2 = g.size();
            if (l2 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Added Fragments:");
                for (int j1 = 0; j1 < l2; j1++)
                {
                    filedescriptor = (d)g.get(j1);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(j1);
                    printwriter.print(": ");
                    printwriter.println(filedescriptor.toString());
                }

            }
        }
        if (j != null)
        {
            int i3 = j.size();
            if (i3 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Fragments Created Menus:");
                for (int k1 = 0; k1 < i3; k1++)
                {
                    filedescriptor = (d)j.get(k1);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(k1);
                    printwriter.print(": ");
                    printwriter.println(filedescriptor.toString());
                }

            }
        }
        if (i != null)
        {
            int j3 = i.size();
            if (j3 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Back Stack:");
                for (int l1 = 0; l1 < j3; l1++)
                {
                    filedescriptor = (a)i.get(l1);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(l1);
                    printwriter.print(": ");
                    printwriter.println(filedescriptor.toString());
                    filedescriptor.a(s2, printwriter);
                }

            }
        }
        this;
        JVM INSTR monitorenter ;
        if (k == null) goto _L2; else goto _L1
_L1:
        int k3 = k.size();
        if (k3 <= 0) goto _L2; else goto _L3
_L3:
        printwriter.print(s1);
        printwriter.println("Back Stack Indices:");
        int i2 = 0;
_L4:
        if (i2 >= k3)
        {
            break; /* Loop/switch isn't completed */
        }
        filedescriptor = (a)k.get(i2);
        printwriter.print(s1);
        printwriter.print("  #");
        printwriter.print(i2);
        printwriter.print(": ");
        printwriter.println(filedescriptor);
        i2++;
        if (true) goto _L4; else goto _L2
_L2:
        if (l != null && l.size() > 0)
        {
            printwriter.print(s1);
            printwriter.print("mAvailBackStackIndices: ");
            printwriter.println(Arrays.toString(l.toArray()));
        }
        this;
        JVM INSTR monitorexit ;
        if (c != null)
        {
            int l3 = c.size();
            if (l3 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Pending Actions:");
                for (int j2 = 0; j2 < l3; j2++)
                {
                    filedescriptor = (Runnable)c.get(j2);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(j2);
                    printwriter.print(": ");
                    printwriter.println(filedescriptor);
                }

            }
        }
        break MISSING_BLOCK_LABEL_696;
        s1;
        throw s1;
        printwriter.print(s1);
        printwriter.println("FragmentManager misc state:");
        printwriter.print(s1);
        printwriter.print("  mActivity=");
        printwriter.println(o);
        printwriter.print(s1);
        printwriter.print("  mContainer=");
        printwriter.println(p);
        if (q != null)
        {
            printwriter.print(s1);
            printwriter.print("  mParent=");
            printwriter.println(q);
        }
        printwriter.print(s1);
        printwriter.print("  mCurState=");
        printwriter.print(n);
        printwriter.print(" mStateSaved=");
        printwriter.print(s);
        printwriter.print(" mDestroyed=");
        printwriter.println(t);
        if (r)
        {
            printwriter.print(s1);
            printwriter.print("  mNeedMenuInvalidate=");
            printwriter.println(r);
        }
        if (u != null)
        {
            printwriter.print(s1);
            printwriter.print("  mNoTransactionsBecause=");
            printwriter.println(u);
        }
        if (h != null && h.size() > 0)
        {
            printwriter.print(s1);
            printwriter.print("  mAvailIndices: ");
            printwriter.println(Arrays.toString(h.toArray()));
        }
        return;
    }

    public final boolean a()
    {
        if (s)
        {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (u != null)
        {
            throw new IllegalStateException((new StringBuilder("Can not perform this action inside of ")).append(u).toString());
        }
        c();
        Handler handler = o.a;
        if (i == null)
        {
            return false;
        }
        int i1 = i.size() - 1;
        if (i1 < 0)
        {
            return false;
        } else
        {
            ((a)i.remove(i1)).a();
            q();
            return true;
        }
    }

    public final boolean a(Menu menu)
    {
        int i1 = 0;
        if (g != null)
        {
            boolean flag = false;
            for (; i1 < g.size(); i1++)
            {
                d d1 = (d)g.get(i1);
                if (d1 != null && d1.performPrepareOptionsMenu(menu))
                {
                    flag = true;
                }
            }

            return flag;
        } else
        {
            return false;
        }
    }

    public final boolean a(Menu menu, MenuInflater menuinflater)
    {
        boolean flag;
        if (g != null)
        {
            int i1 = 0;
            ArrayList arraylist = null;
            flag = false;
            while (i1 < g.size()) 
            {
                d d1 = (d)g.get(i1);
                ArrayList arraylist1 = arraylist;
                boolean flag1 = flag;
                if (d1 != null)
                {
                    arraylist1 = arraylist;
                    flag1 = flag;
                    if (d1.performCreateOptionsMenu(menu, menuinflater))
                    {
                        flag1 = true;
                        arraylist1 = arraylist;
                        if (arraylist == null)
                        {
                            arraylist1 = new ArrayList();
                        }
                        arraylist1.add(d1);
                    }
                }
                i1++;
                flag = flag1;
                arraylist = arraylist1;
            }
            menu = arraylist;
        } else
        {
            menu = null;
            flag = false;
        }
        if (j != null)
        {
            for (int j1 = 0; j1 < j.size(); j1++)
            {
                menuinflater = (d)j.get(j1);
                if (menu == null || !menu.contains(menuinflater))
                {
                    menuinflater.onDestroyOptionsMenu();
                }
            }

        }
        j = menu;
        return flag;
    }

    public final boolean a(MenuItem menuitem)
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                d d1 = (d)g.get(i1);
                if (d1 != null && d1.performOptionsItemSelected(menuitem))
                {
                    return true;
                }
            }

        }
        return false;
    }

    public final d b(String s1)
    {
        if (f != null && s1 != null)
        {
            for (int i1 = f.size() - 1; i1 >= 0; i1--)
            {
                d d1 = (d)f.get(i1);
                if (d1 == null)
                {
                    continue;
                }
                d1 = d1.findFragmentByWho(s1);
                if (d1 != null)
                {
                    return d1;
                }
            }

        }
        return null;
    }

    final void b()
    {
        if (f != null)
        {
            int i1 = 0;
            while (i1 < f.size()) 
            {
                d d1 = (d)f.get(i1);
                if (d1 != null)
                {
                    a(d1);
                }
                i1++;
            }
        }
    }

    public final void b(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        k.set(i1, null);
        if (l == null)
        {
            l = new ArrayList();
        }
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("Freeing back stack index ")).append(i1).toString());
        }
        l.add(Integer.valueOf(i1));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void b(Menu menu)
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                d d1 = (d)g.get(i1);
                if (d1 != null)
                {
                    d1.performOptionsMenuClosed(menu);
                }
            }

        }
    }

    final void b(d d1)
    {
        a(d1, n, 0, 0, false);
    }

    public final void b(d d1, int i1, int j1)
    {
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("hide: ")).append(d1).toString());
        }
        if (!d1.mHidden)
        {
            d1.mHidden = true;
            if (d1.mView != null)
            {
                Animation animation = a(d1, i1, false, j1);
                if (animation != null)
                {
                    d1.mView.startAnimation(animation);
                }
                d1.mView.setVisibility(8);
            }
            if (d1.mAdded && d1.mHasMenu && d1.mMenuVisible)
            {
                r = true;
            }
            d1.onHiddenChanged(true);
        }
    }

    public final boolean b(MenuItem menuitem)
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                d d1 = (d)g.get(i1);
                if (d1 != null && d1.performContextItemSelected(menuitem))
                {
                    return true;
                }
            }

        }
        return false;
    }

    public final void c(d d1, int i1, int j1)
    {
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("show: ")).append(d1).toString());
        }
        if (d1.mHidden)
        {
            d1.mHidden = false;
            if (d1.mView != null)
            {
                Animation animation = a(d1, i1, true, j1);
                if (animation != null)
                {
                    d1.mView.startAnimation(animation);
                }
                d1.mView.setVisibility(0);
            }
            if (d1.mAdded && d1.mHasMenu && d1.mMenuVisible)
            {
                r = true;
            }
            d1.onHiddenChanged(false);
        }
    }

    public final boolean c()
    {
        if (e)
        {
            throw new IllegalStateException("Recursive entry to executePendingTransactions");
        }
        if (Looper.myLooper() != o.a.getLooper())
        {
            throw new IllegalStateException("Must be called from main thread of process");
        }
        boolean flag = false;
_L2:
        this;
        JVM INSTR monitorenter ;
        if (c != null && c.size() != 0)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        this;
        JVM INSTR monitorexit ;
        int i1;
        if (!v)
        {
            break MISSING_BLOCK_LABEL_264;
        }
        int j1 = 0;
        i1 = 0;
        for (; j1 < f.size(); j1++)
        {
            d d1 = (d)f.get(j1);
            if (d1 != null && d1.mLoaderManager != null)
            {
                i1 = d1.mLoaderManager.a() | i1;
            }
        }

        break; /* Loop/switch isn't completed */
        int k1;
        k1 = c.size();
        if (d == null || d.length < k1)
        {
            d = new Runnable[k1];
        }
        c.toArray(d);
        c.clear();
        o.a.removeCallbacks(y);
        this;
        JVM INSTR monitorexit ;
        e = true;
        for (i1 = 0; i1 < k1; i1++)
        {
            d[i1].run();
            d[i1] = null;
        }

        break MISSING_BLOCK_LABEL_240;
        Exception exception;
        exception;
        throw exception;
        e = false;
        flag = true;
        if (true) goto _L2; else goto _L1
_L1:
        if (i1 == 0)
        {
            v = false;
            b();
        }
        return flag;
    }

    final ArrayList d()
    {
        ArrayList arraylist = null;
        if (f != null)
        {
            int i1 = 0;
            arraylist = null;
            while (i1 < f.size()) 
            {
                d d1 = (d)f.get(i1);
                ArrayList arraylist2 = arraylist;
                if (d1 != null)
                {
                    arraylist2 = arraylist;
                    if (d1.mRetainInstance)
                    {
                        ArrayList arraylist1 = arraylist;
                        if (arraylist == null)
                        {
                            arraylist1 = new ArrayList();
                        }
                        arraylist1.add(d1);
                        d1.mRetaining = true;
                        int j1;
                        if (d1.mTarget != null)
                        {
                            j1 = d1.mTarget.mIndex;
                        } else
                        {
                            j1 = -1;
                        }
                        d1.mTargetIndex = j1;
                        arraylist2 = arraylist1;
                        if (a)
                        {
                            Log.v("FragmentManager", (new StringBuilder("retainNonConfig: keeping retained ")).append(d1).toString());
                            arraylist2 = arraylist1;
                        }
                    }
                }
                i1++;
                arraylist = arraylist2;
            }
        }
        return arraylist;
    }

    public final void d(d d1, int i1, int j1)
    {
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("detach: ")).append(d1).toString());
        }
        if (!d1.mDetached)
        {
            d1.mDetached = true;
            if (d1.mAdded)
            {
                if (g != null)
                {
                    if (a)
                    {
                        Log.v("FragmentManager", (new StringBuilder("remove from detach: ")).append(d1).toString());
                    }
                    g.remove(d1);
                }
                if (d1.mHasMenu && d1.mMenuVisible)
                {
                    r = true;
                }
                d1.mAdded = false;
                a(d1, 1, i1, j1, false);
            }
        }
    }

    final Parcelable e()
    {
        o ao[];
        c();
        if (b)
        {
            s = true;
        }
        if (f == null || f.size() <= 0)
        {
            return null;
        }
        int i2 = f.size();
        ao = new o[i2];
        int k1 = 0;
        boolean flag = false;
        while (k1 < i2) 
        {
            d d2 = (d)f.get(k1);
            if (d2 == null)
            {
                continue;
            }
            if (d2.mIndex < 0)
            {
                a(new IllegalStateException((new StringBuilder("Failure saving state: active ")).append(d2).append(" has cleared index: ").append(d2.mIndex).toString()));
            }
            boolean flag1 = true;
            o o1 = new o(d2);
            ao[k1] = o1;
            if (d2.mState > 0 && o1.j == null)
            {
                Bundle bundle2 = null;
                if (w == null)
                {
                    w = new Bundle();
                }
                d2.performSaveInstanceState(w);
                if (!w.isEmpty())
                {
                    bundle2 = w;
                    w = null;
                }
                if (d2.mView != null)
                {
                    c(d2);
                }
                Bundle bundle = bundle2;
                if (d2.mSavedViewState != null)
                {
                    bundle = bundle2;
                    if (bundle2 == null)
                    {
                        bundle = new Bundle();
                    }
                    bundle.putSparseParcelableArray("android:view_state", d2.mSavedViewState);
                }
                bundle2 = bundle;
                if (!d2.mUserVisibleHint)
                {
                    bundle2 = bundle;
                    if (bundle == null)
                    {
                        bundle2 = new Bundle();
                    }
                    bundle2.putBoolean("android:user_visible_hint", d2.mUserVisibleHint);
                }
                o1.j = bundle2;
                if (d2.mTarget != null)
                {
                    if (d2.mTarget.mIndex < 0)
                    {
                        a(new IllegalStateException((new StringBuilder("Failure saving state: ")).append(d2).append(" has target not in fragment manager: ").append(d2.mTarget).toString()));
                    }
                    if (o1.j == null)
                    {
                        o1.j = new Bundle();
                    }
                    Bundle bundle1 = o1.j;
                    d d1 = d2.mTarget;
                    if (d1.mIndex < 0)
                    {
                        a(new IllegalStateException((new StringBuilder("Fragment ")).append(d1).append(" is not currently in the FragmentManager").toString()));
                    }
                    bundle1.putInt("android:target_state", d1.mIndex);
                    if (d2.mTargetRequestCode != 0)
                    {
                        o1.j.putInt("android:target_req_state", d2.mTargetRequestCode);
                    }
                }
            } else
            {
                o1.j = d2.mSavedFragmentState;
            }
            flag = flag1;
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder("Saved state of ")).append(d2).append(": ").append(o1.j).toString());
                flag = flag1;
            }
            k1++;
        }
        if (!flag)
        {
            if (a)
            {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        if (g == null) goto _L2; else goto _L1
_L1:
        int l1 = g.size();
        if (l1 <= 0) goto _L2; else goto _L3
_L3:
        int ai[];
        ai = new int[l1];
        for (int i1 = 0; i1 < l1; i1++)
        {
            ai[i1] = ((d)g.get(i1)).mIndex;
            if (ai[i1] < 0)
            {
                a(new IllegalStateException((new StringBuilder("Failure saving state: active ")).append(g.get(i1)).append(" has cleared index: ").append(ai[i1]).toString()));
            }
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder("saveAllState: adding fragment #")).append(i1).append(": ").append(g.get(i1)).toString());
            }
        }

_L9:
        if (i == null) goto _L5; else goto _L4
_L4:
        l1 = i.size();
        if (l1 <= 0) goto _L5; else goto _L6
_L6:
        b ab1[];
        ab1 = new b[l1];
        for (int j1 = 0; j1 < l1; j1++)
        {
            ab1[j1] = new b((a)i.get(j1));
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder("saveAllState: adding back stack #")).append(j1).append(": ").append(i.get(j1)).toString());
            }
        }

_L7:
        m m1 = new m();
        m1.a = ao;
        m1.b = ai;
        m1.c = ab1;
        return m1;
_L5:
        ab1 = null;
        if (true) goto _L7; else goto _L2
_L2:
        ai = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public final void e(d d1, int i1, int j1)
    {
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder("attach: ")).append(d1).toString());
        }
        if (d1.mDetached)
        {
            d1.mDetached = false;
            if (!d1.mAdded)
            {
                if (g == null)
                {
                    g = new ArrayList();
                }
                if (g.contains(d1))
                {
                    throw new IllegalStateException((new StringBuilder("Fragment already added: ")).append(d1).toString());
                }
                if (a)
                {
                    Log.v("FragmentManager", (new StringBuilder("add from attach: ")).append(d1).toString());
                }
                g.add(d1);
                d1.mAdded = true;
                if (d1.mHasMenu && d1.mMenuVisible)
                {
                    r = true;
                }
                a(d1, n, i1, j1, false);
            }
        }
    }

    public final void f()
    {
        s = false;
    }

    public final void g()
    {
        s = false;
        d(1);
    }

    public final void h()
    {
        s = false;
        d(2);
    }

    public final void i()
    {
        s = false;
        d(4);
    }

    public final void j()
    {
        s = false;
        d(5);
    }

    public final void k()
    {
        d(4);
    }

    public final void l()
    {
        s = true;
        d(3);
    }

    public final void m()
    {
        d(2);
    }

    public final void n()
    {
        d(1);
    }

    public final void o()
    {
        t = true;
        c();
        d(0);
        o = null;
        p = null;
        q = null;
    }

    public final void p()
    {
        if (g != null)
        {
            for (int i1 = 0; i1 < g.size(); i1++)
            {
                d d1 = (d)g.get(i1);
                if (d1 != null)
                {
                    d1.performLowMemory();
                }
            }

        }
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("FragmentManager{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" in ");
        if (q != null)
        {
            ab.a(q, stringbuilder);
        } else
        {
            ab.a(o, stringbuilder);
        }
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
