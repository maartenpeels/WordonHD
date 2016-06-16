.class Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy$1;
.super Ljava/lang/Object;
.source "IncentivizedRateLimitFilterPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;->addDisplay(Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;

.field final synthetic val$adDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy$1;->this$0:Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;

    iput-object p2, p0, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy$1;->val$adDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy$1;->val$adDisplay:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/internal/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy$1;->this$0:Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;->addDisplay(J)V

    .line 34
    :cond_0
    return-void
.end method
