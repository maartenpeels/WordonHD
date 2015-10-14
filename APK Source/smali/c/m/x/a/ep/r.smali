.class final Lc/m/x/a/ep/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lc/m/x/a/ep/q;


# direct methods
.method constructor <init>(Lc/m/x/a/ep/q;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/r;->a:Lc/m/x/a/ep/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/ep/r;->a:Lc/m/x/a/ep/q;

    iget-object v0, v0, Lc/m/x/a/ep/q;->d:Lc/m/x/a/ep/p;

    const-string v1, "ALERT_DISMISSED"

    iget-object v2, p0, Lc/m/x/a/ep/r;->a:Lc/m/x/a/ep/q;

    iget-object v2, v2, Lc/m/x/a/ep/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc/m/x/a/ep/p;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
