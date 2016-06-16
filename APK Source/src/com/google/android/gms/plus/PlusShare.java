// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.fq;
import com.google.android.gms.internal.ih;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.plus:
//            PlusClient

public final class PlusShare
{
    public static class Builder
    {

        private boolean TZ;
        private ArrayList Ua;
        private final Context mContext;
        private final Intent mIntent;

        public Builder addCallToAction(String s, Uri uri, String s1)
        {
            fq.a(TZ, "Must include the launching activity with PlusShare.Builder constructor before setting call-to-action");
            Bundle bundle;
            boolean flag;
            if (uri != null && !TextUtils.isEmpty(uri.toString()))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            fq.b(flag, "Must provide a call to action URL");
            bundle = new Bundle();
            if (!TextUtils.isEmpty(s))
            {
                bundle.putString("label", s);
            }
            bundle.putString("url", uri.toString());
            if (!TextUtils.isEmpty(s1))
            {
                fq.a(PlusShare.bd(s1), "The specified deep-link ID was malformed.");
                bundle.putString("deepLinkId", s1);
            }
            mIntent.putExtra("com.google.android.apps.plus.CALL_TO_ACTION", bundle);
            mIntent.putExtra("com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST", true);
            mIntent.setType("text/plain");
            return this;
        }

        public Builder addStream(Uri uri)
        {
            Uri uri1 = (Uri)mIntent.getParcelableExtra("android.intent.extra.STREAM");
            if (uri1 == null)
            {
                return setStream(uri);
            }
            if (Ua == null)
            {
                Ua = new ArrayList();
            }
            Ua.add(uri1);
            Ua.add(uri);
            return this;
        }

        public Intent getIntent()
        {
            boolean flag;
            boolean flag1;
            boolean flag2;
            boolean flag3;
            if (Ua != null && Ua.size() > 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            flag2 = "android.intent.action.SEND_MULTIPLE".equals(mIntent.getAction());
            flag3 = mIntent.getBooleanExtra("com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST", false);
            if (!flag || !flag3)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            fq.a(flag1, "Call-to-action buttons are only available for URLs.");
            if (!flag3 || mIntent.hasExtra("com.google.android.apps.plus.CONTENT_URL"))
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            fq.a(flag1, "The content URL is required for interactive posts.");
            if (!flag3 || mIntent.hasExtra("com.google.android.apps.plus.CONTENT_URL") || mIntent.hasExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"))
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            fq.a(flag1, "Must set content URL or content deep-link ID to use a call-to-action button.");
            if (mIntent.hasExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"))
            {
                fq.a(PlusShare.bd(mIntent.getStringExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID")), "The specified deep-link ID was malformed.");
            }
            if (!flag && flag2)
            {
                mIntent.setAction("android.intent.action.SEND");
                if (Ua != null && !Ua.isEmpty())
                {
                    mIntent.putExtra("android.intent.extra.STREAM", (Parcelable)Ua.get(0));
                } else
                {
                    mIntent.removeExtra("android.intent.extra.STREAM");
                }
                Ua = null;
            }
            if (flag && !flag2)
            {
                mIntent.setAction("android.intent.action.SEND_MULTIPLE");
                if (Ua != null && !Ua.isEmpty())
                {
                    mIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", Ua);
                } else
                {
                    mIntent.removeExtra("android.intent.extra.STREAM");
                }
            }
            if ("com.google.android.gms.plus.action.SHARE_INTERNAL_GOOGLE".equals(mIntent.getAction()))
            {
                mIntent.setPackage("com.google.android.gms");
                return mIntent;
            }
            if (!mIntent.hasExtra("android.intent.extra.STREAM"))
            {
                mIntent.setAction("com.google.android.gms.plus.action.SHARE_GOOGLE");
                mIntent.setPackage("com.google.android.gms");
                return mIntent;
            } else
            {
                mIntent.setPackage("com.google.android.apps.plus");
                return mIntent;
            }
        }

        public Builder setContentDeepLinkId(String s)
        {
            return setContentDeepLinkId(s, null, null, null);
        }

        public Builder setContentDeepLinkId(String s, String s1, String s2, Uri uri)
        {
            fq.b(TZ, "Must include the launching activity with PlusShare.Builder constructor before setting deep links");
            boolean flag;
            if (!TextUtils.isEmpty(s))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            fq.b(flag, "The deepLinkId parameter is required.");
            s1 = PlusShare.a(s1, s2, uri);
            mIntent.putExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID", s);
            mIntent.putExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA", s1);
            mIntent.setType("text/plain");
            return this;
        }

        public Builder setContentUrl(Uri uri)
        {
            String s = null;
            if (uri != null)
            {
                s = uri.toString();
            }
            if (TextUtils.isEmpty(s))
            {
                mIntent.removeExtra("com.google.android.apps.plus.CONTENT_URL");
                return this;
            } else
            {
                mIntent.putExtra("com.google.android.apps.plus.CONTENT_URL", s);
                return this;
            }
        }

        public Builder setRecipients(Person person, List list)
        {
            Intent intent = mIntent;
            if (person != null)
            {
                person = person.getId();
            } else
            {
                person = "0";
            }
            intent.putExtra("com.google.android.apps.plus.SENDER_ID", person);
            return setRecipients(list);
        }

        public Builder setRecipients(List list)
        {
            int i;
            if (list != null)
            {
                i = list.size();
            } else
            {
                i = 0;
            }
            if (i == 0)
            {
                mIntent.removeExtra("com.google.android.apps.plus.RECIPIENT_IDS");
                mIntent.removeExtra("com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES");
                return this;
            }
            ArrayList arraylist = new ArrayList(i);
            ArrayList arraylist1 = new ArrayList(i);
            Person person;
            for (list = list.iterator(); list.hasNext(); arraylist1.add(person.getDisplayName()))
            {
                person = (Person)list.next();
                arraylist.add(person.getId());
            }

            mIntent.putStringArrayListExtra("com.google.android.apps.plus.RECIPIENT_IDS", arraylist);
            mIntent.putStringArrayListExtra("com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES", arraylist1);
            return this;
        }

        public Builder setStream(Uri uri)
        {
            Ua = null;
            mIntent.putExtra("android.intent.extra.STREAM", uri);
            return this;
        }

        public Builder setText(CharSequence charsequence)
        {
            mIntent.putExtra("android.intent.extra.TEXT", charsequence);
            return this;
        }

        public Builder setType(String s)
        {
            mIntent.setType(s);
            return this;
        }

        public Builder(Activity activity)
        {
            mContext = activity;
            mIntent = (new Intent()).setAction("android.intent.action.SEND");
            mIntent.addFlags(0x80000);
            if (activity != null && activity.getComponentName() != null)
            {
                TZ = true;
            }
        }

        public Builder(Activity activity, PlusClient plusclient)
        {
            this(activity);
            boolean flag;
            if (plusclient != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            fq.a(flag, "PlusClient must not be null.");
            fq.a(plusclient.isConnected(), "PlusClient must be connected to create an interactive post.");
            fq.a(plusclient.iI().bg("https://www.googleapis.com/auth/plus.login"), "Must request PLUS_LOGIN scope in PlusClient to create an interactive post.");
            activity = plusclient.getCurrentPerson();
            if (activity != null)
            {
                activity = activity.getId();
            } else
            {
                activity = "0";
            }
            mIntent.putExtra("com.google.android.apps.plus.SENDER_ID", activity);
        }

        public Builder(Context context)
        {
            mContext = context;
            mIntent = (new Intent()).setAction("android.intent.action.SEND");
        }
    }


    public static final String EXTRA_CALL_TO_ACTION = "com.google.android.apps.plus.CALL_TO_ACTION";
    public static final String EXTRA_CONTENT_DEEP_LINK_ID = "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID";
    public static final String EXTRA_CONTENT_DEEP_LINK_METADATA = "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA";
    public static final String EXTRA_CONTENT_URL = "com.google.android.apps.plus.CONTENT_URL";
    public static final String EXTRA_IS_INTERACTIVE_POST = "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST";
    public static final String EXTRA_SENDER_ID = "com.google.android.apps.plus.SENDER_ID";
    public static final String KEY_CALL_TO_ACTION_DEEP_LINK_ID = "deepLinkId";
    public static final String KEY_CALL_TO_ACTION_LABEL = "label";
    public static final String KEY_CALL_TO_ACTION_URL = "url";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION = "description";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL = "thumbnailUrl";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_TITLE = "title";
    public static final String PARAM_CONTENT_DEEP_LINK_ID = "deep_link_id";

    protected PlusShare()
    {
        throw new AssertionError();
    }

    public static Bundle a(String s, String s1, Uri uri)
    {
        Bundle bundle = new Bundle();
        bundle.putString("title", s);
        bundle.putString("description", s1);
        if (uri != null)
        {
            bundle.putString("thumbnailUrl", uri.toString());
        }
        return bundle;
    }

    protected static boolean bd(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            Log.e("GooglePlusPlatform", "The provided deep-link ID is empty.");
            return false;
        }
        if (s.contains(" "))
        {
            Log.e("GooglePlusPlatform", "Spaces are not allowed in deep-link IDs.");
            return false;
        } else
        {
            return true;
        }
    }

    public static Person createPerson(String s, String s1)
    {
        if (TextUtils.isEmpty(s))
        {
            throw new IllegalArgumentException("MinimalPerson ID must not be empty.");
        }
        if (TextUtils.isEmpty(s1))
        {
            throw new IllegalArgumentException("Display name must not be empty.");
        } else
        {
            return new ih(s1, s, null, 0, null);
        }
    }

    public static String getDeepLinkId(Intent intent)
    {
        Object obj = null;
        String s = obj;
        if (intent != null)
        {
            s = obj;
            if (intent.getData() != null)
            {
                s = intent.getData().getQueryParameter("deep_link_id");
            }
        }
        return s;
    }
}
