.class Lair/com/flaregames/wordon/AppEntry$4;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/flaregames/wordon/AppEntry;->launchAIRService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/flaregames/wordon/AppEntry;


# direct methods
.method constructor <init>(Lair/com/flaregames/wordon/AppEntry;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lair/com/flaregames/wordon/AppEntry$4;->this$0:Lair/com/flaregames/wordon/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 291
    iget-object v0, p0, Lair/com/flaregames/wordon/AppEntry$4;->this$0:Lair/com/flaregames/wordon/AppEntry;

    invoke-virtual {v0, p0}, Lair/com/flaregames/wordon/AppEntry;->unbindService(Landroid/content/ServiceConnection;)V

    .line 294
    iget-object v0, p0, Lair/com/flaregames/wordon/AppEntry$4;->this$0:Lair/com/flaregames/wordon/AppEntry;

    # invokes: Lair/com/flaregames/wordon/AppEntry;->loadSharedRuntimeDex()V
    invoke-static {v0}, Lair/com/flaregames/wordon/AppEntry;->access$100(Lair/com/flaregames/wordon/AppEntry;)V

    .line 295
    iget-object v0, p0, Lair/com/flaregames/wordon/AppEntry$4;->this$0:Lair/com/flaregames/wordon/AppEntry;

    const/4 v1, 0x0

    # invokes: Lair/com/flaregames/wordon/AppEntry;->createActivityWrapper(Z)V
    invoke-static {v0, v1}, Lair/com/flaregames/wordon/AppEntry;->access$200(Lair/com/flaregames/wordon/AppEntry;Z)V

    .line 297
    # getter for: Lair/com/flaregames/wordon/AppEntry;->sRuntimeClassesLoaded:Z
    invoke-static {}, Lair/com/flaregames/wordon/AppEntry;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lair/com/flaregames/wordon/AppEntry$4;->this$0:Lair/com/flaregames/wordon/AppEntry;

    # invokes: Lair/com/flaregames/wordon/AppEntry;->InvokeWrapperOnCreate()V
    invoke-static {v0}, Lair/com/flaregames/wordon/AppEntry;->access$400(Lair/com/flaregames/wordon/AppEntry;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    # invokes: Lair/com/flaregames/wordon/AppEntry;->KillSelf()V
    invoke-static {}, Lair/com/flaregames/wordon/AppEntry;->access$500()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 311
    return-void
.end method
