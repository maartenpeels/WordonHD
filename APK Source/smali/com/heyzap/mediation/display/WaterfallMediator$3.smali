.class Lcom/heyzap/mediation/display/WaterfallMediator$3;
.super Ljava/lang/Object;
.source "WaterfallMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/WaterfallMediator;->addDisplay(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult$NetworkResult;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

.field final synthetic val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$3;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    iput-object p2, p0, Lcom/heyzap/mediation/display/WaterfallMediator$3;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$3;->val$display:Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    iget-object v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->displayListener:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    .line 199
    iget-boolean v0, v0, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;->success:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$3;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/heyzap/mediation/display/WaterfallMediator;->lastInterstitialVideoAt:J
    invoke-static {v0, v1, v2}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$302(Lcom/heyzap/mediation/display/WaterfallMediator;J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
