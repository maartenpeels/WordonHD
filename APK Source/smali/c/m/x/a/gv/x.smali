.class final Lc/m/x/a/gv/x;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lc/m/x/a/gv/w;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/w;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/x;->a:Lc/m/x/a/gv/w;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lc/m/x/a/gv/x;->a:Lc/m/x/a/gv/w;

    invoke-static {v0}, Lc/m/x/a/gv/w;->a(Lc/m/x/a/gv/w;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
