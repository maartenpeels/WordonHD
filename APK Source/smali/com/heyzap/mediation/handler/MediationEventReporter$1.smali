.class Lcom/heyzap/mediation/handler/MediationEventReporter$1;
.super Lcom/heyzap/internal/FutureUtils$FutureRunnable;
.source "MediationEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/handler/MediationEventReporter;->bindDisplayCallbacks(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/internal/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;

.field final synthetic val$baseParams:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/internal/ListenableFuture;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$1;->this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;

    iput-object p3, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$1;->val$baseParams:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/internal/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 39
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;->success:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$1;->this$0:Lcom/heyzap/mediation/handler/MediationEventReporter;

    new-instance v1, Lcom/heyzap/http/RequestParams;

    iget-object v2, p0, Lcom/heyzap/mediation/handler/MediationEventReporter$1;->val$baseParams:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/heyzap/http/RequestParams;-><init>(Ljava/util/Map;)V

    # invokes: Lcom/heyzap/mediation/handler/MediationEventReporter;->onImpression(Lcom/heyzap/http/RequestParams;)V
    invoke-static {v0, v1}, Lcom/heyzap/mediation/handler/MediationEventReporter;->access$000(Lcom/heyzap/mediation/handler/MediationEventReporter;Lcom/heyzap/http/RequestParams;)V

    .line 42
    :cond_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/handler/MediationEventReporter$1;->run(Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;Ljava/lang/Exception;)V

    return-void
.end method
