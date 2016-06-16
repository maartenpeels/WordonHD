.class Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;
.super Ljava/lang/Object;
.source "TJAdUnitView.java"

# interfaces
.implements Lcom/tapjoy/mraid/listener/MraidViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TJAdUnitViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJAdUnitView;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJAdUnitView;Lcom/tapjoy/TJAdUnitView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TJAdUnitView;
    .param p2, "x1"    # Lcom/tapjoy/TJAdUnitView$1;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitView;->finish()V

    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 8
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 558
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v5, v5, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v5, v5, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    if-eqz v5, :cond_1

    .line 560
    const/4 v5, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Uncaught"

    aput-object v6, v2, v5

    const-string v5, "uncaught"

    aput-object v5, v2, v7

    const/4 v5, 0x2

    const-string v6, "Error"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "error"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "not defined"

    aput-object v6, v2, v5

    .line 562
    .local v2, "errors":[Ljava/lang/String;
    const-string v5, "TJAdUnitView"

    const-string v6, "shouldClose..."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 567
    .local v1, "error":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 569
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v5}, Lcom/tapjoy/TJAdUnitView;->handleClose()V

    .line 565
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "errors":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return v7
.end method

.method public onEventFired()Z
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public onExpand()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public onExpandClose()Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    # getter for: Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$200(Lcom/tapjoy/TJAdUnitView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    # getter for: Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    .line 611
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 613
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 580
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    # getter for: Lcom/tapjoy/TJAdUnitView;->isLegacyView:Z
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$200(Lcom/tapjoy/TJAdUnitView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    # getter for: Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    # getter for: Lcom/tapjoy/TJAdUnitView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 594
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    .line 595
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 597
    :cond_1
    return-void
.end method

.method public onReady()Z
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public onResize()Z
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public onResizeClose()Z
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v7, "dismiss"

    const-string v5, "TJAdUnitView"

    .line 620
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnitView;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    const-string v2, "Connection not properly established"

    invoke-virtual {v1, p1, v4, v2, p2}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 702
    .end local p1    # "view":Landroid/webkit/WebView;
    :goto_0
    return v1

    .line 624
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iput-boolean v4, v1, Lcom/tapjoy/TJAdUnitView;->redirectedActivity:Z

    .line 626
    const/4 v0, 0x0

    .line 629
    .local v0, "host":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://ws.tapjoyads.com/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 632
    :goto_1
    const-string v1, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptURL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mraid"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    .line 637
    goto :goto_0

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    # getter for: Lcom/tapjoy/TJAdUnitView;->viewType:I
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitView;->access$400(Lcom/tapjoy/TJAdUnitView;)I

    move-result v1

    if-ne v1, v6, :cond_2

    const-string v1, "offer_wall"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 643
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    const-string v2, "offer_wall"

    # invokes: Lcom/tapjoy/TJAdUnitView;->finishWithResult(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tapjoy/TJAdUnitView;->access$500(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    move v1, v3

    .line 644
    goto :goto_0

    .line 648
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    # getter for: Lcom/tapjoy/TJAdUnitView;->viewType:I
    invoke-static {v1}, Lcom/tapjoy/TJAdUnitView;->access$400(Lcom/tapjoy/TJAdUnitView;)I

    move-result v1

    if-ne v1, v6, :cond_3

    const-string v1, "tjvideo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 650
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    const-string v2, "tjvideo"

    # invokes: Lcom/tapjoy/TJAdUnitView;->finishWithResult(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tapjoy/TJAdUnitView;->access$500(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    move v1, v3

    .line 651
    goto :goto_0

    .line 657
    :cond_3
    const-string v1, "tjvideo://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 659
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    # invokes: Lcom/tapjoy/TJAdUnitView;->handleTJVideoURL(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/tapjoy/TJAdUnitView;->access$600(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    move v1, v3

    .line 660
    goto/16 :goto_0

    .line 665
    :cond_4
    const-string v1, "showOffers"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 667
    const-string v1, "TJAdUnitView"

    const-string v1, "showOffers"

    invoke-static {v5, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v1, Lcom/tapjoy/TJCOffers;

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {v1, v2}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V

    move v1, v3

    .line 669
    goto/16 :goto_0

    .line 674
    :cond_5
    const-string v1, "dismiss"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 676
    const-string v1, "TJAdUnitView"

    const-string v1, "dismiss"

    invoke-static {v5, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnitView;->finish()V

    move v1, v3

    .line 678
    goto/16 :goto_0

    .line 685
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const-string v1, "tjyoutubevideo=true"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getRedirectDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getEventURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 687
    :cond_8
    const-string v1, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open redirecting URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    check-cast p1, Lcom/tapjoy/mraid/view/MraidView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->loadUrlStandard(Ljava/lang/String;)V

    move v1, v3

    .line 689
    goto/16 :goto_0

    .line 693
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    if-eqz v1, :cond_a

    .line 695
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iput-boolean v3, v1, Lcom/tapjoy/TJAdUnitView;->redirectedActivity:Z

    move v1, v4

    .line 696
    goto/16 :goto_0

    .line 701
    :cond_a
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v1, v3

    .line 702
    goto/16 :goto_0

    .line 630
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method
