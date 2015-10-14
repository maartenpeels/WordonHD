.class Lcom/chartboost/sdk/Libraries/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Libraries/j;->a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Libraries/e$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Libraries/j;Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/j$2;->d:Lcom/chartboost/sdk/Libraries/j;

    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/j$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    iput-object p3, p0, Lcom/chartboost/sdk/Libraries/j$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/chartboost/sdk/Libraries/j$2;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v3, "checksum"

    .line 210
    const-string v0, ""

    .line 211
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/j$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "checksum"

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/j$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "checksum"

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/j$2;->a:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "checksum"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 214
    :goto_0
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->a()Lcom/chartboost/sdk/impl/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/j$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/j$2;->d:Lcom/chartboost/sdk/Libraries/j;

    invoke-static {v3}, Lcom/chartboost/sdk/Libraries/j;->b(Lcom/chartboost/sdk/Libraries/j;)Lcom/chartboost/sdk/impl/bd$b;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/chartboost/sdk/Libraries/j$2;->c:Landroid/os/Bundle;

    if-nez v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/bd$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    .line 216
    return-void

    .line 214
    :cond_0
    iget-object v5, p0, Lcom/chartboost/sdk/Libraries/j$2;->c:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method
