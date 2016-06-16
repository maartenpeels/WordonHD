.class final Lc/m/x/a/iab/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/m/x/a/iab/p;

.field final synthetic b:Lc/m/x/a/iab/q;

.field final synthetic c:Lc/m/x/a/iab/f;


# direct methods
.method constructor <init>(Lc/m/x/a/iab/f;Lc/m/x/a/iab/p;Lc/m/x/a/iab/q;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/iab/g;->c:Lc/m/x/a/iab/f;

    iput-object p2, p0, Lc/m/x/a/iab/g;->a:Lc/m/x/a/iab/p;

    iput-object p3, p0, Lc/m/x/a/iab/g;->b:Lc/m/x/a/iab/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/iab/g;->c:Lc/m/x/a/iab/f;

    iget-object v0, v0, Lc/m/x/a/iab/f;->d:Lc/m/x/a/iab/o;

    iget-object v1, p0, Lc/m/x/a/iab/g;->a:Lc/m/x/a/iab/p;

    iget-object v2, p0, Lc/m/x/a/iab/g;->b:Lc/m/x/a/iab/q;

    invoke-interface {v0, v1, v2}, Lc/m/x/a/iab/o;->a(Lc/m/x/a/iab/p;Lc/m/x/a/iab/q;)V

    return-void
.end method
