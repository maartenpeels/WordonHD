.class public Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;
.super Lcom/heyzap/house/abstr/AbstractActivity;
.source "HeyzapInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$1;,
        Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;
    }
.end annotation


# instance fields
.field private webview:Lcom/heyzap/house/view/InterstitialWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/heyzap/house/abstr/AbstractActivity;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;)Lcom/heyzap/house/view/InterstitialWebView;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->webview:Lcom/heyzap/house/view/InterstitialWebView;

    return-object v0
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->webview:Lcom/heyzap/house/view/InterstitialWebView;

    return-object v0
.end method

.method public onPrepared()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/heyzap/house/view/InterstitialWebView;

    new-instance v1, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;-><init>(Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$1;)V

    invoke-direct {v0, p0, v1}, Lcom/heyzap/house/view/InterstitialWebView;-><init>(Landroid/content/Context;Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->webview:Lcom/heyzap/house/view/InterstitialWebView;

    .line 19
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->webview:Lcom/heyzap/house/view/InterstitialWebView;

    iget-object p0, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    check-cast p0, Lcom/heyzap/house/model/InterstitialModel;

    invoke-virtual {v0, p0}, Lcom/heyzap/house/view/InterstitialWebView;->render(Lcom/heyzap/house/model/InterstitialModel;)V

    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->onPrepared()Ljava/lang/Boolean;

    .line 69
    return-void
.end method
