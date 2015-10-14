.class final Lcom/milkmangames/extensions/android/goviral/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/w;->b:Lcom/milkmangames/extensions/android/goviral/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/goviral/w;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const-string v2, ""

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/w;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v1, "Android hash"

    const-string v3, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Your android hash key is below.  You\'ll need to enter it in the facebook developer site.  After doing so, you can switch to the regular ANE file.  Remember that this key is different when you build with a debug or release android p12 keystore file- so you\'ll need to do this again before release and set the release key on the facebook site. KEY:    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/milkmangames/extensions/android/goviral/w;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    const-string v5, ""

    const-string v7, "0"

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
