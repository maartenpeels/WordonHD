.class Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;
.super Ljava/lang/Object;
.source "RateLimitFilterPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->addDisplay(Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;

.field final synthetic val$adDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;->this$0:Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;

    iput-object p2, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;->val$adDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;->val$adDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v2, "failed"

    invoke-direct {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/heyzap/internal/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    iget-boolean v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;->success:Z

    .line 54
    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy$1;->this$0:Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;->addDisplay(J)V

    .line 57
    :cond_0
    return-void
.end method
