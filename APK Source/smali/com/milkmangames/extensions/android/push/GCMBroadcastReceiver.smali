.class public Lcom/milkmangames/extensions/android/push/GCMBroadcastReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.milkmangames.extensions.android.push.GCMIntentService"

    return-object v0
.end method
