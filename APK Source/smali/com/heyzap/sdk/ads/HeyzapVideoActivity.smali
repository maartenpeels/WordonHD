.class public Lcom/heyzap/sdk/ads/HeyzapVideoActivity;
.super Lcom/heyzap/house/abstr/AbstractActivity;
.source "HeyzapVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/ads/HeyzapVideoActivity$1;,
        Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;,
        Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;
    }
.end annotation


# static fields
.field private static final NO_SCREEN:I = 0x0

.field private static final VIDEO_SCREEN:I = 0x2

.field private static final WEBVIEW_SCREEN:I = 0x1


# instance fields
.field protected backgroundView:Landroid/widget/FrameLayout;

.field private currentScreen:I

.field protected startedVideo:Ljava/lang/Boolean;

.field protected videoView:Lcom/heyzap/house/view/FullscreenVideoView;

.field protected webView:Lcom/heyzap/house/view/InterstitialWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lcom/heyzap/house/abstr/AbstractActivity;-><init>()V

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->startedVideo:Ljava/lang/Boolean;

    .line 35
    iput v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentScreen:I

    .line 228
    return-void
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onAudioStarted()V

    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onAudioFinished()V

    return-void
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method static synthetic access$502(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAdComplete:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method static synthetic access$800(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method private onAudioFinished()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->startedVideo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onAudioFinished()V

    .line 187
    :cond_0
    return-void
.end method

.method private onAudioStarted()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->startedVideo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onAudioStarted()V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 83
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->backgroundView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->backgroundView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/heyzap/house/abstr/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/heyzap/internal/Utils;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 42
    const/4 v0, 0x6

    invoke-super {p0, v0}, Lcom/heyzap/house/abstr/AbstractActivity;->setRequestedOrientation(I)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/heyzap/house/abstr/AbstractActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAdUnit:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 128
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    invoke-virtual {v2}, Lcom/heyzap/house/view/FullscreenVideoView;->getPlaybackDuration()I

    move-result v2

    iget-object v3, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    invoke-virtual {v3}, Lcom/heyzap/house/view/FullscreenVideoView;->getTotalVideoDuration()I

    move-result v3

    iget-object v4, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAdComplete:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/heyzap/house/model/VideoModel;->onComplete(Landroid/content/Context;IILjava/lang/Boolean;)Ljava/lang/Boolean;

    .line 133
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAdComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnIncentiveListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v1}, Lcom/heyzap/house/model/AdModel;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;->onComplete(Ljava/lang/String;)V

    .line 141
    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->onHide()V

    .line 143
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->webView:Lcom/heyzap/house/view/InterstitialWebView;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->webView:Lcom/heyzap/house/view/InterstitialWebView;

    invoke-virtual {v0}, Lcom/heyzap/house/view/InterstitialWebView;->clear()V

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    invoke-virtual {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->clear()V

    .line 150
    :cond_3
    return-void

    .line 126
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnIncentiveListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v1}, Lcom/heyzap/house/model/AdModel;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;->onIncomplete(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    invoke-virtual {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->stop()V

    .line 175
    :cond_0
    return-void
.end method

.method public onPrepared()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 51
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    .line 53
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->backgroundView:Landroid/widget/FrameLayout;

    .line 54
    iget-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->backgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 55
    new-instance v1, Lcom/heyzap/house/view/InterstitialWebView;

    new-instance v2, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;

    invoke-direct {v2, p0, v7}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;-><init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;Lcom/heyzap/sdk/ads/HeyzapVideoActivity$1;)V

    invoke-direct {v1, p0, v2}, Lcom/heyzap/house/view/InterstitialWebView;-><init>(Landroid/content/Context;Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;)V

    iput-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->webView:Lcom/heyzap/house/view/InterstitialWebView;

    .line 56
    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->webView:Lcom/heyzap/house/view/InterstitialWebView;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    check-cast v1, Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v2, v1}, Lcom/heyzap/house/view/InterstitialWebView;->render(Lcom/heyzap/house/model/VideoModel;)V

    .line 58
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HeyzapVideoActivity"

    aput-object v2, v1, v3

    const-string v2, "isFileCached"

    aput-object v2, v1, v5

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->isFileCached()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "should allow fallback to streaming"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->shouldAllowFallbackToStreaming()Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "should force streaming"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->shouldForceStreaming()Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "show post roll interstitial"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v3

    iget-object v3, v3, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->postRollInterstitial:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->isFileCached()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->shouldAllowFallbackToStreaming()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->shouldForceStreaming()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    :cond_0
    new-instance v1, Lcom/heyzap/house/view/FullscreenVideoView;

    new-instance v2, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;

    invoke-direct {v2, p0, v7}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$VideoActionListener;-><init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;Lcom/heyzap/sdk/ads/HeyzapVideoActivity$1;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/heyzap/house/view/FullscreenVideoView;-><init>(Landroid/content/Context;Lcom/heyzap/house/model/VideoModel;Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;)V

    iput-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    .line 66
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->backgroundView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iput v6, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentScreen:I

    .line 78
    :cond_1
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 69
    :cond_2
    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->postRollInterstitial:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "(INTERSTITIAL FALLBACK)"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->onInterstitialFallback()V

    .line 73
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->backgroundView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->webView:Lcom/heyzap/house/view/InterstitialWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iput v5, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentScreen:I

    goto :goto_0
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->onRestart()V

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentScreen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    check-cast v0, Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->postRollInterstitial:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->switchToView(I)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onHide()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onPrepared()Ljava/lang/Boolean;

    .line 308
    return-void
.end method

.method protected switchToView(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 88
    iget v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentScreen:I

    if-ne p1, v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/high16 v0, 0x10a0000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 91
    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 96
    iget v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentScreen:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    .line 105
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 115
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 116
    iget-object v3, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->backgroundView:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->backgroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 120
    iput p1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->currentScreen:I

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->webView:Lcom/heyzap/house/view/InterstitialWebView;

    goto :goto_1

    .line 101
    :pswitch_1
    iget-object v1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    goto :goto_1

    .line 107
    :pswitch_2
    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->webView:Lcom/heyzap/house/view/InterstitialWebView;

    .line 108
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 111
    :pswitch_3
    iget-object v2, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    goto :goto_2

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 105
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
