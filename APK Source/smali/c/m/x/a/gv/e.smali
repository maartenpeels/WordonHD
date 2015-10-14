.class final Lc/m/x/a/gv/e;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/gv/h;


# instance fields
.field final synthetic a:Lc/m/x/a/gv/d;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/d;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/e;->a:Lc/m/x/a/gv/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/e;->a:Lc/m/x/a/gv/d;

    iget-object v0, v0, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->a:Lc/m/x/a/gv/d;

    iget-object v0, v0, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
