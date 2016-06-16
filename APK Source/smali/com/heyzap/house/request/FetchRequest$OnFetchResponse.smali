.class public interface abstract Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;
.super Ljava/lang/Object;
.source "FetchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/request/FetchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFetchResponse"
.end annotation


# virtual methods
.method public abstract onFetchResponse(Ljava/util/List;Lcom/heyzap/house/request/FetchRequest;Ljava/lang/Throwable;)V
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
.end method

.method public abstract onModelsReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;)V"
        }
    .end annotation
.end method
