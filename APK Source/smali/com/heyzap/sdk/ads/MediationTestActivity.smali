.class public Lcom/heyzap/sdk/ads/MediationTestActivity;
.super Landroid/app/Activity;
.source "MediationTestActivity.java"


# instance fields
.field private final adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field private final contextReference:Lcom/heyzap/internal/ContextReference;

.field currentNetworks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field inSecondView:Z

.field private uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

.field upperCaseNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->inSecondView:Z

    .line 40
    new-instance v0, Lcom/heyzap/sdk/ads/MediationTestActivity$1;

    invoke-direct {v0, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$1;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    .line 52
    new-instance v0, Lcom/heyzap/internal/ContextReference;

    invoke-direct {v0}, Lcom/heyzap/internal/ContextReference;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->contextReference:Lcom/heyzap/internal/ContextReference;

    .line 53
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 54
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 57
    new-instance v0, Lcom/heyzap/sdk/ads/MediationTestActivity$2;

    invoke-direct {v0, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$2;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->upperCaseNames:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/ads/MediationTestActivity;Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/ads/MediationTestActivity;->getAdUnit(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/ads/MediationTestActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private assembleUI()V
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->inSecondView:Z

    .line 88
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->upperCaseNames:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    new-instance v2, Lcom/heyzap/sdk/ads/MediationTestActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/heyzap/sdk/ads/MediationTestActivity$3;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->setContentView(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method private checkRemoteAvailability()V
    .locals 2

    .prologue
    .line 104
    invoke-static {p0}, Lcom/heyzap/sdk/ads/HeyzapAds;->changeActivity(Landroid/app/Activity;)V

    .line 105
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/MediationManager;->getConfigLoader()Lcom/heyzap/mediation/config/MediationConfigLoader;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/ads/MediationTestActivity$4;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$4;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->get(Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;)V

    .line 151
    return-void
.end method

.method private getAdUnit(Ljava/lang/String;)Lcom/heyzap/internal/Constants$AdUnit;
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    .line 279
    const-string v1, "Rewarded Video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :cond_1
    const-string v1, "Video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    goto :goto_0
.end method


# virtual methods
.method public makeSecondaryUI(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    invoke-virtual {v1}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    :goto_1
    move-object v3, v0

    goto :goto_0

    .line 160
    :cond_0
    if-nez v3, :cond_1

    .line 275
    :goto_2
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->inSecondView:Z

    .line 168
    invoke-virtual {v3, p0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getLocalTextView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 169
    invoke-virtual {v3, p0}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getRemoteTextView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 170
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 172
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 173
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    new-instance v6, Landroid/widget/RadioGroup;

    invoke-direct {v6, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getAdUnitCapabilities()Ljava/util/EnumSet;

    move-result-object v7

    .line 178
    const/4 v8, 0x1

    .line 179
    if-eqz v7, :cond_5

    .line 180
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heyzap/internal/Constants$AdUnit;

    .line 181
    new-instance v10, Landroid/widget/RadioButton;

    invoke-direct {v10, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 182
    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setTextSize(F)V

    .line 183
    sget-object v11, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne p1, v11, :cond_3

    .line 184
    const-string v11, "Interstitial"

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_4
    invoke-virtual {v6, v10}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 193
    if-eqz v8, :cond_2

    .line 194
    invoke-virtual {v10}, Landroid/widget/RadioButton;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 195
    const/4 v8, 0x0

    goto :goto_3

    .line 185
    :cond_3
    sget-object v11, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne p1, v11, :cond_4

    .line 186
    const-string v11, "Rewarded Video"

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 187
    :cond_4
    sget-object v11, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne p1, v11, :cond_2

    .line 188
    const-string v11, "Video"

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 199
    :cond_5
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 200
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 201
    if-eqz v7, :cond_6

    invoke-virtual {v3}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->getNetworkStatus()Z

    move-result v7

    if-nez v7, :cond_7

    .line 202
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 203
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    :goto_5
    const-string v3, "Fetch"

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 265
    const-string v3, "Show"

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 267
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 274
    invoke-virtual {p0, v2}, Lcom/heyzap/sdk/ads/MediationTestActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 205
    :cond_7
    new-instance v7, Lcom/heyzap/sdk/ads/MediationTestActivity$5;

    invoke-direct {v7, p0, v6, v3}, Lcom/heyzap/sdk/ads/MediationTestActivity$5;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/RadioGroup;Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;)V

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance v7, Lcom/heyzap/sdk/ads/MediationTestActivity$6;

    invoke-direct {v7, p0, v6, v3}, Lcom/heyzap/sdk/ads/MediationTestActivity$6;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity;Landroid/widget/RadioGroup;Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;)V

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_8
    move-object v0, v3

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->inSecondView:Z

    if-eqz v0, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->assembleUI()V

    goto :goto_0

    .line 295
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v0, Lcom/heyzap/internal/HandlerExecutorService;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/heyzap/internal/HandlerExecutorService;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->uiThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 70
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->contextReference:Lcom/heyzap/internal/ContextReference;

    invoke-virtual {v0, p0}, Lcom/heyzap/internal/ContextReference;->updateContext(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcom/heyzap/mediation/adapter/AdapterScanner;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->contextReference:Lcom/heyzap/internal/ContextReference;

    invoke-direct {v0, v1}, Lcom/heyzap/mediation/adapter/AdapterScanner;-><init>(Lcom/heyzap/internal/ContextReference;)V

    .line 73
    invoke-virtual {v0}, Lcom/heyzap/mediation/adapter/AdapterScanner;->scan()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 74
    invoke-static {v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->createAdapterFromKlass(Ljava/lang/Class;)Lcom/heyzap/mediation/abstr/NetworkAdapter;

    move-result-object v2

    .line 75
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity;->currentNetworks:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, v2}, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->setNetworkAdapter(Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->assembleUI()V

    .line 82
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/MediationTestActivity;->checkRemoteAvailability()V

    .line 83
    return-void
.end method
