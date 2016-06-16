.class final Lc/m/x/a/iab/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lc/m/x/a/iab/o;

.field final synthetic e:Lc/m/x/a/iab/d;


# direct methods
.method constructor <init>(Lc/m/x/a/iab/d;ZLjava/util/List;Landroid/os/Handler;Lc/m/x/a/iab/o;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/iab/f;->e:Lc/m/x/a/iab/d;

    iput-boolean p2, p0, Lc/m/x/a/iab/f;->a:Z

    iput-object p3, p0, Lc/m/x/a/iab/f;->b:Ljava/util/List;

    iput-object p4, p0, Lc/m/x/a/iab/f;->c:Landroid/os/Handler;

    iput-object p5, p0, Lc/m/x/a/iab/f;->d:Lc/m/x/a/iab/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Lc/m/x/a/iab/p;

    const/4 v1, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v0, v1, v2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lc/m/x/a/iab/f;->e:Lc/m/x/a/iab/d;

    iget-boolean v3, p0, Lc/m/x/a/iab/f;->a:Z

    iget-object v4, p0, Lc/m/x/a/iab/f;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lc/m/x/a/iab/d;->a(ZLjava/util/List;)Lc/m/x/a/iab/q;
    :try_end_0
    .catch Lc/m/x/a/iab/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    iget-object v2, p0, Lc/m/x/a/iab/f;->e:Lc/m/x/a/iab/d;

    invoke-virtual {v2}, Lc/m/x/a/iab/d;->c()V

    iget-object v2, p0, Lc/m/x/a/iab/f;->c:Landroid/os/Handler;

    new-instance v3, Lc/m/x/a/iab/g;

    invoke-direct {v3, p0, v1, v0}, Lc/m/x/a/iab/g;-><init>(Lc/m/x/a/iab/f;Lc/m/x/a/iab/p;Lc/m/x/a/iab/q;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lc/m/x/a/iab/c;->a()Lc/m/x/a/iab/p;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0
.end method
