.class final Lc/m/x/a/ep/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lc/m/x/a/ep/p;


# direct methods
.method constructor <init>(Lc/m/x/a/ep/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/q;->d:Lc/m/x/a/ep/p;

    iput-object p2, p0, Lc/m/x/a/ep/q;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/m/x/a/ep/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/m/x/a/ep/q;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lc/m/x/a/ep/q;->d:Lc/m/x/a/ep/p;

    invoke-virtual {v1}, Lc/m/x/a/ep/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lc/m/x/a/ep/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lc/m/x/a/ep/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lc/m/x/a/ep/r;

    invoke-direct {v2, p0}, Lc/m/x/a/ep/r;-><init>(Lc/m/x/a/ep/q;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
