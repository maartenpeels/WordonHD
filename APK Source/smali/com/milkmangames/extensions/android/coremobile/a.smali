.class public abstract Lcom/milkmangames/extensions/android/coremobile/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/a;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/a;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/a;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const v0, 0x3000001a

    const-string v1, "com.milkmangames.customextensions.android.WakeLock"

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/milkmangames/extensions/android/coremobile/a;->a:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method
