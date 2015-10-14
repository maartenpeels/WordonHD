.class final Lcom/heyzap/sdk/ads/NativeAd$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/NativeAd;->fetch(Ljava/lang/String;ILcom/heyzap/sdk/ads/NativeAd$OnFetchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/heyzap/sdk/ads/NativeAd$OnFetchListener;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/NativeAd$OnFetchListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/heyzap/sdk/ads/NativeAd$1;->val$listener:Lcom/heyzap/sdk/ads/NativeAd$OnFetchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchResponse(Ljava/util/List;Lcom/heyzap/house/request/FetchRequest;Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;",
            "Lcom/heyzap/house/request/FetchRequest;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 59
    .line 60
    if-nez p3, :cond_4

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 64
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/NativeModel;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    new-instance v3, Lcom/heyzap/sdk/ads/NativeAd$Ad;

    invoke-direct {v3, v0, v4}, Lcom/heyzap/sdk/ads/NativeAd$Ad;-><init>(Lcom/heyzap/house/model/NativeModel;Lcom/heyzap/sdk/ads/NativeAd$1;)V

    .line 68
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 74
    :goto_1
    if-eqz v0, :cond_3

    .line 75
    new-instance v1, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;

    invoke-virtual {p2}, Lcom/heyzap/house/request/FetchRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v4}, Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/heyzap/sdk/ads/NativeAd$1;)V

    move-object v0, v1

    .line 78
    :goto_2
    # setter for: Lcom/heyzap/sdk/ads/NativeAd;->lastResponse:Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;
    invoke-static {v0}, Lcom/heyzap/sdk/ads/NativeAd;->access$202(Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;)Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;

    .line 80
    iget-object v1, p0, Lcom/heyzap/sdk/ads/NativeAd$1;->val$listener:Lcom/heyzap/sdk/ads/NativeAd$OnFetchListener;

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/heyzap/sdk/ads/NativeAd$1;->val$listener:Lcom/heyzap/sdk/ads/NativeAd$OnFetchListener;

    invoke-virtual {p2}, Lcom/heyzap/house/request/FetchRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2, p3}, Lcom/heyzap/sdk/ads/NativeAd$OnFetchListener;->onResponse(Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :cond_2
    return-void

    :cond_3
    move-object v0, v4

    goto :goto_2

    :cond_4
    move-object v0, v4

    goto :goto_1
.end method

.method public onModelsReceived(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method
