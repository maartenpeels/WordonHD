.class Lcom/heyzap/mediation/config/MediationConfigLoader$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "MediationConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/config/MediationConfigLoader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/config/MediationConfigLoader;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lcom/heyzap/http/RequestParams;

    invoke-direct {v0}, Lcom/heyzap/http/RequestParams;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/heyzap/mediation/config/MediationConfigLoader$1;->this$0:Lcom/heyzap/mediation/config/MediationConfigLoader;

    # getter for: Lcom/heyzap/mediation/config/MediationConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;
    invoke-static {v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->access$000(Lcom/heyzap/mediation/config/MediationConfigLoader;)Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v1

    const-string v2, "https://med.heyzap.com/start"

    new-instance v3, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;

    invoke-direct {v3, p0}, Lcom/heyzap/mediation/config/MediationConfigLoader$1$1;-><init>(Lcom/heyzap/mediation/config/MediationConfigLoader$1;)V

    invoke-static {v1, v2, v0, v3}, Lcom/heyzap/internal/APIClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 109
    return-void
.end method
