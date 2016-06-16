.class Lcom/heyzap/internal/PackageManager$1$1$2;
.super Lcom/heyzap/http/JsonHttpResponseHandler;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/PackageManager$1$1;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/internal/PackageManager$1$1;

.field final synthetic val$installedCount:I

.field final synthetic val$totalCount:I


# direct methods
.method constructor <init>(Lcom/heyzap/internal/PackageManager$1$1;II)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/heyzap/internal/PackageManager$1$1$2;->this$1:Lcom/heyzap/internal/PackageManager$1$1;

    iput p2, p0, Lcom/heyzap/internal/PackageManager$1$1$2;->val$installedCount:I

    iput p3, p0, Lcom/heyzap/internal/PackageManager$1$1$2;->val$totalCount:I

    invoke-direct {p0}, Lcom/heyzap/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1$1$2;->this$1:Lcom/heyzap/internal/PackageManager$1$1;

    iget-boolean v0, v0, Lcom/heyzap/internal/PackageManager$1$1;->val$debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1$1$2;->this$1:Lcom/heyzap/internal/PackageManager$1$1;

    iget-object v0, v0, Lcom/heyzap/internal/PackageManager$1$1;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1$1$2;->this$1:Lcom/heyzap/internal/PackageManager$1$1;

    iget-object v0, v0, Lcom/heyzap/internal/PackageManager$1$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/heyzap/internal/PackageManager$1$1$2$1;

    invoke-direct {v1, p0}, Lcom/heyzap/internal/PackageManager$1$1$2$1;-><init>(Lcom/heyzap/internal/PackageManager$1$1$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    :cond_0
    return-void
.end method
