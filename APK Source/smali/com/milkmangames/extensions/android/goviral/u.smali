.class final Lcom/milkmangames/extensions/android/goviral/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/u;->b:Lcom/milkmangames/extensions/android/goviral/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/goviral/u;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/Response;)V
    .locals 4

    const-string v0, ""

    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "custom_audience_third_party_id"

    invoke-interface {v1, v0}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/u;->b:Lcom/milkmangames/extensions/android/goviral/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/milkmangames/extensions/android/goviral/u;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[[[GVRiD]]]420"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/milkmangames/extensions/android/goviral/b;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
