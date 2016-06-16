.class Lcom/urbanairship/Preferences$Preference$1;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/urbanairship/Preferences$Preference;


# direct methods
.method constructor <init>(Lcom/urbanairship/Preferences$Preference;)V
    .locals 1

    iput-object p1, p0, Lcom/urbanairship/Preferences$Preference$1;->a:Lcom/urbanairship/Preferences$Preference;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preference updated:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/Preferences$Preference$1;->a:Lcom/urbanairship/Preferences$Preference;

    invoke-static {v1}, Lcom/urbanairship/Preferences$Preference;->a(Lcom/urbanairship/Preferences$Preference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/Preferences$Preference$1;->a:Lcom/urbanairship/Preferences$Preference;

    invoke-static {v0}, Lcom/urbanairship/Preferences$Preference;->b(Lcom/urbanairship/Preferences$Preference;)Z

    return-void
.end method
