.class Lcom/heyzap/internal/PackageManager$1$1$1;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/heyzap/internal/PackageManager$1$1;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/heyzap/internal/PackageManager$1$1$1;->this$1:Lcom/heyzap/internal/PackageManager$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/heyzap/internal/PackageManager$1$1$1;->this$1:Lcom/heyzap/internal/PackageManager$1$1;

    iget-object v0, v0, Lcom/heyzap/internal/PackageManager$1$1;->this$0:Lcom/heyzap/internal/PackageManager$1;

    iget-object v0, v0, Lcom/heyzap/internal/PackageManager$1;->val$context:Landroid/content/Context;

    const-string v1, "cip"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    return-void
.end method
