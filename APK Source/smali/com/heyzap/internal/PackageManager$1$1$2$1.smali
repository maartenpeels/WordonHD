.class Lcom/heyzap/internal/PackageManager$1$1$2$1;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/PackageManager$1$1$2;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/heyzap/internal/PackageManager$1$1$2;


# direct methods
.method constructor <init>(Lcom/heyzap/internal/PackageManager$1$1$2;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/heyzap/internal/PackageManager$1$1$2$1;->this$2:Lcom/heyzap/internal/PackageManager$1$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 110
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1$1$2$1;->this$2:Lcom/heyzap/internal/PackageManager$1$1$2;

    iget-object v0, v0, Lcom/heyzap/internal/PackageManager$1$1$2;->this$1:Lcom/heyzap/internal/PackageManager$1$1;

    iget-object v0, v0, Lcom/heyzap/internal/PackageManager$1$1;->this$0:Lcom/heyzap/internal/PackageManager$1;

    iget-object v0, v0, Lcom/heyzap/internal/PackageManager$1;->val$context:Landroid/content/Context;

    const-string v1, "cip %s.%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/heyzap/internal/PackageManager$1$1$2$1;->this$2:Lcom/heyzap/internal/PackageManager$1$1$2;

    iget v4, v4, Lcom/heyzap/internal/PackageManager$1$1$2;->val$installedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/heyzap/internal/PackageManager$1$1$2$1;->this$2:Lcom/heyzap/internal/PackageManager$1$1$2;

    iget v3, v3, Lcom/heyzap/internal/PackageManager$1$1$2;->val$totalCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    return-void
.end method
