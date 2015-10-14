.class final Lc/m/x/a/iab/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lc/m/x/a/iab/h;


# direct methods
.method constructor <init>(Lc/m/x/a/iab/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/iab/i;->b:Lc/m/x/a/iab/h;

    iput-object p2, p0, Lc/m/x/a/iab/i;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lc/m/x/a/iab/i;->b:Lc/m/x/a/iab/h;

    iget-object v1, v0, Lc/m/x/a/iab/h;->b:Lc/m/x/a/iab/k;

    iget-object v0, p0, Lc/m/x/a/iab/i;->b:Lc/m/x/a/iab/h;

    iget-object v0, v0, Lc/m/x/a/iab/h;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/iab/r;

    iget-object v2, p0, Lc/m/x/a/iab/i;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/m/x/a/iab/p;

    invoke-interface {v1, v0, p0}, Lc/m/x/a/iab/k;->a(Lc/m/x/a/iab/r;Lc/m/x/a/iab/p;)V

    return-void
.end method
