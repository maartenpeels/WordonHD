.class public abstract Lcom/heyzap/house/abstr/AbstractFetchHandler;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "AbstractFetchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALLBACK:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;


# instance fields
.field private callback:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

.field private context:Landroid/content/Context;

.field private request:Lcom/heyzap/house/request/FetchRequest;

.field private sentResponse:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/heyzap/house/abstr/AbstractFetchHandler$1;

    invoke-direct {v0}, Lcom/heyzap/house/abstr/AbstractFetchHandler$1;-><init>()V

    sput-object v0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->DEFAULT_CALLBACK:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/heyzap/house/request/FetchRequest;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->request:Lcom/heyzap/house/request/FetchRequest;

    .line 40
    iput-object p1, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->sentResponse:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->callback:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->DEFAULT_CALLBACK:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->callback:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFetchRequest()Lcom/heyzap/house/request/FetchRequest;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->request:Lcom/heyzap/house/request/FetchRequest;

    return-object v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    .line 148
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "HTTP Status: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->onFetchReceived(Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 142
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "HTTP Status: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->onFetchReceived(Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method protected onFailure(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 114
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->sentResponse:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "(FETCH FAILED) Error: %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-static {p1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 118
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->request:Lcom/heyzap/house/request/FetchRequest;

    invoke-virtual {v0}, Lcom/heyzap/house/request/FetchRequest;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->fetchFailReason(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 121
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->sentResponse:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->getCallback()Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->getFetchRequest()Lcom/heyzap/house/request/FetchRequest;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;->onFetchResponse(Ljava/util/List;Lcom/heyzap/house/request/FetchRequest;Ljava/lang/Throwable;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onFetchReceived(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public final onFetchReceived(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const-string v0, "status"

    .line 50
    :try_start_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no status"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "JSONException"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->onFetchReceived(Ljava/lang/Throwable;)V

    .line 80
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->onFetchSuccess(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no_fill"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 73
    :catch_1
    move-exception v0

    .line 74
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->getFetchRequest()Lcom/heyzap/house/request/FetchRequest;

    move-result-object v1

    .line 75
    invoke-virtual {v0}, Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/house/request/FetchRequest;->setRejectedImpressionId(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/house/request/FetchRequest;->execute(Landroid/content/Context;)V

    goto :goto_0

    .line 61
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->request:Lcom/heyzap/house/request/FetchRequest;

    invoke-virtual {v0}, Lcom/heyzap/house/request/FetchRequest;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/analytics/Event;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getImpressionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/heyzap/analytics/Event;->impressionId(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/analytics/Event;->fetchFinishedTime(J)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 64
    invoke-virtual {p0, v1}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->shouldFireCallbackOnSuccess(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    invoke-virtual {p0, v1}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->onSuccess(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 77
    :catch_2
    move-exception v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->onFetchReceived(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->getCallback()Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;->onModelsReceived(Ljava/util/List;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/heyzap/house/abstr/AbstractFetchHandler$AlreadyInstalledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0
.end method

.method protected abstract onFetchSuccess(Lorg/json/JSONObject;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "default onSuccess"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->onFetchReceived(Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0, p3}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->onFetchReceived(Lorg/json/JSONObject;)V

    .line 132
    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .locals 4
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
    const/4 v3, 0x1

    .line 101
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->sentResponse:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string v0, "(FETCH) %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->sentResponse:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/AdModel;

    .line 106
    invoke-virtual {v0, v3}, Lcom/heyzap/house/model/AdModel;->setIsReady(Z)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->getCallback()Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->getFetchRequest()Lcom/heyzap/house/request/FetchRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;->onFetchResponse(Ljava/util/List;Lcom/heyzap/house/request/FetchRequest;Ljava/lang/Throwable;)V

    .line 111
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/heyzap/house/abstr/AbstractFetchHandler;->callback:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    .line 46
    return-void
.end method

.method public shouldFireCallbackOnSuccess(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/house/model/AdModel;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
