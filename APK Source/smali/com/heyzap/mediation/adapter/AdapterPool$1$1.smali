.class Lcom/heyzap/mediation/adapter/AdapterPool$1$1;
.super Ljava/lang/Object;
.source "AdapterPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/adapter/AdapterPool$1;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/adapter/AdapterPool$1;

.field final synthetic val$e:Lcom/heyzap/analytics/Event;

.field final synthetic val$fetchFuture:Lcom/heyzap/internal/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/adapter/AdapterPool$1;Lcom/heyzap/analytics/Event;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->this$1:Lcom/heyzap/mediation/adapter/AdapterPool$1;

    iput-object p2, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->val$e:Lcom/heyzap/analytics/Event;

    iput-object p3, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->val$fetchFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->val$e:Lcom/heyzap/analytics/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->fetchFinishedTime(J)Lcom/heyzap/analytics/Event;

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->val$fetchFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    .line 119
    iget-boolean v1, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->val$e:Lcom/heyzap/analytics/Event;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/heyzap/analytics/Event;->fetchFailReason(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->commit(Z)V

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->val$e:Lcom/heyzap/analytics/Event;

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;->val$e:Lcom/heyzap/analytics/Event;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/analytics/Event;->fetchFailReason(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/heyzap/analytics/Event;->commit(Z)V

    .line 126
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
