.class Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;
.super Ljava/lang/Object;
.source "HeyzapVideoActivity.java"

# interfaces
.implements Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/HeyzapVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;Lcom/heyzap/sdk/ads/HeyzapVideoActivity$1;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;-><init>(Lcom/heyzap/sdk/ads/HeyzapVideoActivity;)V

    return-void
.end method


# virtual methods
.method public click()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onClick()V

    .line 202
    return-void
.end method

.method public clickUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-virtual {v0, p1, p2}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public completed()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public error()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->onHide()V

    .line 197
    return-void
.end method

.method public installHeyzap()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->switchToView(I)V

    .line 223
    iget-object v0, p0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity$WebViewActionListener;->this$0:Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;->videoView:Lcom/heyzap/house/view/FullscreenVideoView;

    invoke-virtual {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->restart()V

    .line 224
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method
