.class final Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;
.super Ljava/lang/Object;
.source "AdModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->fetch(Lcom/heyzap/house/model/AdModel;Lcom/heyzap/internal/GenericCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/heyzap/internal/GenericCallback;

.field final synthetic val$cssUrls:Ljava/util/List;

.field final synthetic val$imgUrls:Ljava/util/List;

.field final synthetic val$model:Lcom/heyzap/house/model/AdModel;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/heyzap/house/model/AdModel;Ljava/util/List;Lcom/heyzap/internal/GenericCallback;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$imgUrls:Ljava/util/List;

    iput-object p2, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    iput-object p3, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$cssUrls:Ljava/util/List;

    iput-object p4, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$callback:Lcom/heyzap/internal/GenericCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 546
    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$imgUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_0 .. :try_end_0} :catch_4

    .line 553
    :try_start_1
    iget-object v4, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    # invokes: Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->saveUrlAsFile(Ljava/lang/String;Lcom/heyzap/house/model/AdModel;)Landroid/net/Uri;
    invoke-static {v0, v4}, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->access$300(Ljava/lang/String;Lcom/heyzap/house/model/AdModel;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    move-object v11, v4

    move v4, v2

    move-object v2, v11

    .line 561
    :goto_1
    if-eqz v2, :cond_6

    .line 563
    :try_start_2
    iget-object v3, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    iget-object v5, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v5}, Lcom/heyzap/house/model/AdModel;->getHtmlData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/heyzap/house/model/AdModel;->setHtmlData(Ljava/lang/String;)V

    move v0, v9

    :goto_2
    move v2, v4

    move v3, v0

    .line 565
    goto :goto_0

    .line 554
    :catch_0
    move-exception v2

    move-object v2, v10

    move v4, v9

    .line 559
    goto :goto_1

    .line 556
    :catch_1
    move-exception v2

    .line 558
    invoke-static {v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    move-object v2, v10

    move v4, v9

    goto :goto_1

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$cssUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_2 .. :try_end_2} :catch_4

    .line 568
    const/4 v4, 0x0

    .line 570
    :try_start_3
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    # invokes: Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->saveUrlAsFile(Ljava/lang/String;Lcom/heyzap/house/model/AdModel;)Landroid/net/Uri;
    invoke-static {v4, v5}, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->access$300(Ljava/lang/String;Lcom/heyzap/house/model/AdModel;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v4

    move-object v11, v4

    move v4, v2

    move-object v2, v11

    .line 579
    :goto_4
    if-eqz v2, :cond_5

    .line 585
    :try_start_4
    iget-object v3, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    iget-object v5, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v5}, Lcom/heyzap/house/model/AdModel;->getHtmlData()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\"%s\""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/heyzap/house/model/AdModel;->setHtmlData(Ljava/lang/String;)V

    move v0, v9

    :goto_5
    move v2, v4

    move v3, v0

    .line 587
    goto :goto_3

    .line 571
    :catch_2
    move-exception v2

    .line 573
    invoke-static {v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    move-object v2, v10

    move v4, v9

    .line 577
    goto :goto_4

    .line 574
    :catch_3
    move-exception v2

    .line 576
    invoke-static {v2}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    move-object v2, v10

    move v4, v9

    goto :goto_4

    .line 589
    :cond_1
    if-eqz v3, :cond_4

    .line 590
    if-eqz v2, :cond_3

    .line 591
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    const/4 v1, 0x1

    # setter for: Lcom/heyzap/house/model/AdModel;->creativeSuccess:I
    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->access$402(Lcom/heyzap/house/model/AdModel;I)I

    .line 603
    :goto_6
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$callback:Lcom/heyzap/internal/GenericCallback;

    if-eqz v0, :cond_2

    .line 604
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$callback:Lcom/heyzap/internal/GenericCallback;

    iget-object v1, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/heyzap/internal/GenericCallback;->onCallback(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 612
    :cond_2
    :goto_7
    return-void

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    const/4 v1, 0x2

    # setter for: Lcom/heyzap/house/model/AdModel;->creativeSuccess:I
    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->access$402(Lcom/heyzap/house/model/AdModel;I)I
    :try_end_4
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 606
    :catch_4
    move-exception v0

    .line 609
    const-string v1, "HtmlAssetFetcher interrupted"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 610
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 596
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher$1;->val$model:Lcom/heyzap/house/model/AdModel;

    const/4 v1, 0x0

    # setter for: Lcom/heyzap/house/model/AdModel;->creativeSuccess:I
    invoke-static {v0, v1}, Lcom/heyzap/house/model/AdModel;->access$402(Lcom/heyzap/house/model/AdModel;I)I
    :try_end_5
    .catch Lcom/heyzap/house/model/AdModel$HtmlAssetFetcherInterruptException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :cond_5
    move v0, v3

    goto :goto_5

    :cond_6
    move v0, v3

    goto/16 :goto_2
.end method
