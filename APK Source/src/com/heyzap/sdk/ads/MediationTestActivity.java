// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.heyzap.sdk.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.heyzap.http.AsyncHttpResponseHandler;
import com.heyzap.http.RequestParams;
import com.heyzap.internal.APIClient;
import com.heyzap.internal.Constants;
import com.heyzap.internal.ContextReference;
import com.heyzap.internal.ExecutorPool;
import com.heyzap.internal.FutureUtils;
import com.heyzap.internal.HandlerExecutorService;
import com.heyzap.internal.SettableFuture;
import com.heyzap.mediation.FetchRequestStore;
import com.heyzap.mediation.MediationManager;
import com.heyzap.mediation.abstr.NetworkAdapter;
import com.heyzap.mediation.adapter.AdapterScanner;
import com.heyzap.mediation.config.MediationConfig;
import com.heyzap.mediation.config.MediationConfigLoader;
import com.heyzap.sdk.mediation.testactivity.NetworkStatus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.heyzap.sdk.ads:
//            HeyzapAds

public class MediationTestActivity extends Activity
{

    private final HeyzapAds.AdsConfig adsConfig = new HeyzapAds.AdsConfig();
    private final ContextReference contextReference = new ContextReference();
    TreeMap currentNetworks;
    private final ScheduledExecutorService executorService = ExecutorPool.getInstance();
    boolean inSecondView;
    private ExecutorService uiThreadExecutorService;
    List upperCaseNames;

    public MediationTestActivity()
    {
        inSecondView = false;
        currentNetworks = new TreeMap() {

            final MediationTestActivity this$0;

            
            {
                this$0 = MediationTestActivity.this;
                super();
                put("adcolony", new NetworkStatus("AdColony"));
                put("admob", new NetworkStatus("AdMob"));
                put("applovin", new NetworkStatus("AppLovin"));
                put("chartboost", new NetworkStatus("Chartboost"));
                put("facebook", new NetworkStatus("Facebook Audience Network"));
                put("unityads", new NetworkStatus("UnityAds"));
                put("vungle", new NetworkStatus("Vungle"));
            }
        };
        upperCaseNames = new ArrayList() {

            final MediationTestActivity this$0;

            
            {
                this$0 = MediationTestActivity.this;
                super();
                for (mediationtestactivity = currentNetworks.values().iterator(); hasNext(); add(((NetworkStatus)next()).getName())) { }
            }
        };
    }

    private void assembleUI()
    {
        inSecondView = false;
        ListView listview = new ListView(this);
        final ArrayAdapter elements = new ArrayAdapter(this, 0x1090003, upperCaseNames);
        listview.setAdapter(elements);
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final MediationTestActivity this$0;
            final ArrayAdapter val$elements;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                makeSecondaryUI((String)elements.getItem(i));
            }

            
            {
                this$0 = MediationTestActivity.this;
                elements = arrayadapter;
                super();
            }
        });
        setContentView(listview);
    }

    private void checkRemoteAvailability()
    {
        HeyzapAds.changeActivity(this);
        MediationManager.getInstance().getConfigLoader().get(new com.heyzap.mediation.config.ConfigLoader.MediationConfigListener() {

            final MediationTestActivity this$0;

            public void onConfigLoaded(MediationConfig mediationconfig)
            {
                APIClient.get(MediationTestActivity.this, "https://med.heyzap.com/info", new RequestParams(), new AsyncHttpResponseHandler() {

                    final _cls4 this$1;

                    public void onFailure(int i, Header aheader[], byte abyte0[], Throwable throwable)
                    {
                        for (aheader = currentNetworks.values().iterator(); aheader.hasNext(); ((NetworkStatus)aheader.next()).setRemoteStatus(3)) { }
                    }

                    public void onSuccess(int i, Header aheader[], byte abyte0[])
                    {
                        i = 0;
                        aheader = (new JSONObject(new String(abyte0))).getJSONArray("networks");
_L3:
                        if (i >= aheader.length()) goto _L2; else goto _L1
_L1:
                        abyte0 = aheader.getJSONObject(i);
                        if (!currentNetworks.containsKey(abyte0.optString("name")))
                        {
                            break MISSING_BLOCK_LABEL_212;
                        }
                        NetworkStatus networkstatus;
                        networkstatus = (NetworkStatus)currentNetworks.get(abyte0.getString("name"));
                        if (abyte0.getJSONObject("data").length() == 0)
                        {
                            networkstatus.setRemoteStatus(0);
                            break MISSING_BLOCK_LABEL_212;
                        }
                        if (abyte0.getBoolean("enabled") && networkstatus.getNetworkAdapter() != null && networkstatus.getNetworkAdapter().isInitialized())
                        {
                            networkstatus.fetchRequestStore = networkstatus.getNetworkAdapter().getFetchStore();
                            networkstatus.setRemoteStatus(1);
                            break MISSING_BLOCK_LABEL_212;
                        }
                        try
                        {
                            networkstatus.setRemoteStatus(2);
                            break MISSING_BLOCK_LABEL_212;
                        }
                        // Misplaced declaration of an exception variable
                        catch (Header aheader[])
                        {
                            for (aheader = currentNetworks.values().iterator(); aheader.hasNext(); ((NetworkStatus)aheader.next()).setRemoteStatus(3)) { }
                        }
_L2:
                        return;
                        i++;
                          goto _L3
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                });
            }

            
            {
                this$0 = MediationTestActivity.this;
                super();
            }
        });
    }

    private com.heyzap.internal.Constants.AdUnit getAdUnit(String s)
    {
        com.heyzap.internal.Constants.AdUnit adunit = com.heyzap.internal.Constants.AdUnit.INTERSTITIAL;
        if (s.equals("Rewarded Video"))
        {
            adunit = com.heyzap.internal.Constants.AdUnit.INCENTIVIZED;
        } else
        if (s.equals("Video"))
        {
            return com.heyzap.internal.Constants.AdUnit.VIDEO;
        }
        return adunit;
    }

    public void makeSecondaryUI(final String adType)
    {
        final NetworkStatus status;
        Object obj;
        View view;
        ScrollView scrollview;
        LinearLayout linearlayout;
        TextView textview;
        java.util.EnumSet enumset;
        boolean flag;
        obj = currentNetworks.entrySet().iterator();
        status = null;
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator) (obj)).next();
            if (((NetworkStatus)entry.getValue()).getName().equals(adType))
            {
                status = (NetworkStatus)entry.getValue();
            }
        } while (true);
        if (status == null)
        {
            return;
        }
        inSecondView = true;
        obj = status.getLocalTextView(this);
        view = status.getRemoteTextView(this);
        scrollview = new ScrollView(this);
        linearlayout = new LinearLayout(this);
        linearlayout.setOrientation(1);
        textview = new TextView(this);
        textview.setText(adType);
        textview.setTextSize(40F);
        adType = new RadioGroup(this);
        enumset = status.getNetworkAdapter().getAdUnitCapabilities();
        flag = true;
        if (enumset == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = enumset.iterator();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L3
_L3:
        com.heyzap.internal.Constants.AdUnit adunit;
        RadioButton radiobutton;
        adunit = (com.heyzap.internal.Constants.AdUnit)iterator.next();
        radiobutton = new RadioButton(this);
        radiobutton.setTextSize(20F);
        if (adunit == com.heyzap.internal.Constants.AdUnit.INTERSTITIAL)
        {
            radiobutton.setText("Interstitial");
        } else
        {
            if (adunit != com.heyzap.internal.Constants.AdUnit.INCENTIVIZED)
            {
                continue; /* Loop/switch isn't completed */
            }
            radiobutton.setText("Rewarded Video");
        }
_L6:
        adType.addView(radiobutton);
        if (flag)
        {
            adType.check(radiobutton.getId());
            flag = false;
        }
        continue; /* Loop/switch isn't completed */
        if (adunit != com.heyzap.internal.Constants.AdUnit.VIDEO) goto _L5; else goto _L4
_L4:
        radiobutton.setText("Video");
          goto _L6
_L2:
        Button button = new Button(this);
        Button button1 = new Button(this);
        if (enumset == null || !status.getNetworkStatus())
        {
            button.setEnabled(false);
            button1.setEnabled(false);
        } else
        {
            button.setOnClickListener(new android.view.View.OnClickListener() {

                final MediationTestActivity this$0;
                final RadioGroup val$adType;
                final NetworkStatus val$status;

                public void onClick(View view1)
                {
                    view1 = ((TextView)findViewById(adType.getCheckedRadioButtonId())).getText().toString();
                    view1 = getAdUnit(view1);
                    status.getFetchRequestStore().add(view1);
                    if (!status.getNetworkAdapter().isStarted(Arrays.asList(new com.heyzap.internal.Constants.AdUnit[] {
                view1
            })))
                    {
                        status.getNetworkAdapter().start(Arrays.asList(new com.heyzap.internal.Constants.AdUnit[] {
                            view1
                        }));
                    }
                    view1 = status.getNetworkAdapter().awaitAvailability(view1);
                    view1.addListener(view1. new Runnable() {

                        final _cls5 this$1;
                        final SettableFuture val$fetchResultFuture;

                        public void run()
                        {
                            boolean flag = ((com.heyzap.mediation.abstr.NetworkAdapter.FetchResult)FutureUtils.getImmediatelyOrDefault(fetchResultFuture, new com.heyzap.mediation.abstr.NetworkAdapter.FetchResult(com.heyzap.internal.Constants.AdNetworkFetchFailureReason.UNKNOWN, "future failure"))).success;
                            MediationTestActivity mediationtestactivity = _fld0;
                            StringBuilder stringbuilder = (new StringBuilder()).append("Ad ");
                            String s;
                            if (flag)
                            {
                                s = "";
                            } else
                            {
                                s = "not ";
                            }
                            Toast.makeText(mediationtestactivity, stringbuilder.append(s).append("available").toString(), 1).show();
                        }

            
            {
                this$1 = final__pcls5;
                fetchResultFuture = SettableFuture.this;
                super();
            }
                    }, uiThreadExecutorService);
                    runOnUiThread(new Runnable() {

                        final _cls5 this$1;

                        public void run()
                        {
                            Toast.makeText(_fld0, "Fetching (may take up to 60 seconds)", 1).show();
                        }

            
            {
                this$1 = _cls5.this;
                super();
            }
                    });
                }

            
            {
                this$0 = MediationTestActivity.this;
                adType = radiogroup;
                status = networkstatus;
                super();
            }
            });
            button1.setOnClickListener(new android.view.View.OnClickListener() {

                final MediationTestActivity this$0;
                final RadioGroup val$adType;
                final NetworkStatus val$status;

                public void onClick(View view1)
                {
                    view1 = ((TextView)findViewById(adType.getCheckedRadioButtonId())).getText().toString();
                    view1 = getAdUnit(view1);
                    view1 = status.getNetworkAdapter().show(view1, Constants.DEFAULT_TAG, MediationTestActivity.this);
                    ((com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay) (view1)).displayListener.addListener(view1. new Runnable() {

                        final _cls6 this$1;
                        final com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay val$display;

                        public void run()
                        {
                            if (!((com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult)FutureUtils.getImmediatelyOrDefault(display.displayListener, new com.heyzap.mediation.abstr.NetworkAdapter.DisplayResult("future failure"))).success)
                            {
                                Toast.makeText(_fld0, "Display failed", 0);
                            }
                        }

            
            {
                this$1 = final__pcls6;
                display = com.heyzap.mediation.abstr.NetworkAdapter.AdDisplay.this;
                super();
            }
                    }, uiThreadExecutorService);
                }

            
            {
                this$0 = MediationTestActivity.this;
                adType = radiogroup;
                status = networkstatus;
                super();
            }
            });
        }
        button.setText("Fetch");
        button.setTextSize(20F);
        button1.setText("Show");
        button1.setTextSize(20F);
        linearlayout.addView(textview);
        linearlayout.addView(((View) (obj)));
        linearlayout.addView(view);
        linearlayout.addView(adType);
        linearlayout.addView(button);
        linearlayout.addView(button1);
        scrollview.addView(linearlayout);
        setContentView(scrollview);
        return;
        if (true) goto _L5; else goto _L7
_L7:
    }

    public void onBackPressed()
    {
        if (HeyzapAds.onBackPressed())
        {
            return;
        }
        if (inSecondView)
        {
            assembleUI();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        uiThreadExecutorService = new HandlerExecutorService(new Handler(Looper.getMainLooper()));
        contextReference.updateContext(this);
        bundle = (new AdapterScanner(contextReference)).scan().iterator();
        do
        {
            if (!bundle.hasNext())
            {
                break;
            }
            NetworkAdapter networkadapter = NetworkAdapter.createAdapterFromKlass((Class)bundle.next());
            NetworkStatus networkstatus = (NetworkStatus)currentNetworks.get(networkadapter.getCanonicalName());
            if (networkstatus != null)
            {
                networkstatus.setNetworkAdapter(networkadapter);
            }
        } while (true);
        assembleUI();
        checkRemoteAvailability();
    }


}
