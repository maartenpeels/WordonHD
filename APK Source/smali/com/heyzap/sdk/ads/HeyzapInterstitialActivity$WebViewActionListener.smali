.class Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;
.super Ljava/lang/Object;
.source "HeyzapInterstitialActivity.java"

# interfaces
.implements Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;-><init>(Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;)V

    return-void
.end method


# virtual methods
.method public click()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->onClick()V

    .line 44
    return-void
.end method

.method public clickUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;

    invoke-virtual {v0, p1, p2}, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public completed()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public error()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;

    # getter for: Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->webview:Lcom/heyzap/house/view/InterstitialWebView;
    invoke-static {v0}, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->access$100(Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;)Lcom/heyzap/house/view/InterstitialWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/view/InterstitialWebView;->clear()V

    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->onHide()V

    .line 39
    return-void
.end method

.method public installHeyzap()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;->onShow()V

    .line 33
    return-void
.end method
