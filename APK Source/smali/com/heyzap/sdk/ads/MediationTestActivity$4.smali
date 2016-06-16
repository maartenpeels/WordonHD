.class Lcom/heyzap/sdk/ads/MediationTestActivity$4;
.super Ljava/lang/Object;
.source "MediationTestActivity.java"

# interfaces
.implements Lcom/heyzap/mediation/config/ConfigLoader$MediationConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/MediationTestActivity;->checkRemoteAvailability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/MediationTestActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigLoaded(Lcom/heyzap/mediation/config/MediationConfig;)V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/heyzap/sdk/ads/MediationTestActivity$4;->this$0:Lcom/heyzap/sdk/ads/MediationTestActivity;

    const-string v1, "https://med.heyzap.com/info"

    new-instance v2, Lcom/heyzap/http/RequestParams;

    invoke-direct {v2}, Lcom/heyzap/http/RequestParams;-><init>()V

    new-instance v3, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;

    invoke-direct {v3, p0}, Lcom/heyzap/sdk/ads/MediationTestActivity$4$1;-><init>(Lcom/heyzap/sdk/ads/MediationTestActivity$4;)V

    invoke-static {v0, v1, v2, v3}, Lcom/heyzap/internal/APIClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 148
    return-void
.end method
