.class final Lc/m/x/a/ep/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lc/m/x/a/ep/p;


# direct methods
.method constructor <init>(Lc/m/x/a/ep/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/s;->b:Lc/m/x/a/ep/p;

    iput-object p2, p0, Lc/m/x/a/ep/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/ep/s;->b:Lc/m/x/a/ep/p;

    const-string v1, "ALERT_DISMISSED"

    iget-object v2, p0, Lc/m/x/a/ep/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc/m/x/a/ep/p;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
