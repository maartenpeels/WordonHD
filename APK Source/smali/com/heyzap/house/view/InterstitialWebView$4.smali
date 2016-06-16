.class Lcom/heyzap/house/view/InterstitialWebView$4;
.super Landroid/webkit/WebViewClient;
.source "InterstitialWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/view/InterstitialWebView;->setupWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field model:Lcom/heyzap/house/model/AdModel;

.field final synthetic this$0:Lcom/heyzap/house/view/InterstitialWebView;


# direct methods
.method constructor <init>(Lcom/heyzap/house/view/InterstitialWebView;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public init(JLcom/heyzap/house/model/AdModel;)Landroid/webkit/WebViewClient;
    .locals 0

    .prologue
    .line 190
    iput-object p3, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->model:Lcom/heyzap/house/model/AdModel;

    .line 191
    return-object p0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 240
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->model:Lcom/heyzap/house/model/AdModel;

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->adRenderTime(J)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 243
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/house/view/InterstitialWebView;->contentLoaded:Ljava/lang/Boolean;

    .line 245
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->wrapperView:Lcom/heyzap/house/view/InterstitialWebView$WrapperView;
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$100(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/view/InterstitialWebView$WrapperView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/heyzap/house/view/InterstitialWebView$WrapperView;->setVisibility(I)V

    .line 246
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/house/view/InterstitialWebView;->contentLoaded:Ljava/lang/Boolean;

    .line 230
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v1, "Heyzap.clickManualAdUrl="

    .line 196
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$400(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "Heyzap.close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->model:Lcom/heyzap/house/model/AdModel;

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/heyzap/analytics/Event;->close(Z)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/heyzap/analytics/Event;->commit(Z)V

    .line 199
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$400(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->hide()V

    .line 217
    :cond_0
    :goto_0
    return v3

    .line 200
    :cond_1
    const-string v0, "Heyzap.restart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$400(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->restart()V

    goto :goto_0

    .line 202
    :cond_2
    const-string v0, "Heyzap.installHeyzap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$400(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->installHeyzap()V

    goto :goto_0

    .line 204
    :cond_3
    const-string v0, "Heyzap.clickAd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/InterstitialWebView;->access$400(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->click()V

    goto :goto_0

    .line 206
    :cond_4
    const-string v0, "Heyzap.clickManualAdUrl="

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "Heyzap.clickManualAdUrl="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    .line 208
    const-string v1, ":::"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 209
    add-int/lit8 v2, v1, 0x3

    .line 210
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/heyzap/house/view/InterstitialWebView$4;->this$0:Lcom/heyzap/house/view/InterstitialWebView;

    # getter for: Lcom/heyzap/house/view/InterstitialWebView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v2}, Lcom/heyzap/house/view/InterstitialWebView;->access$400(Lcom/heyzap/house/view/InterstitialWebView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->clickUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
