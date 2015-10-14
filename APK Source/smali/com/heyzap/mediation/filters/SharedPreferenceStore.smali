.class Lcom/heyzap/mediation/filters/SharedPreferenceStore;
.super Ljava/lang/Object;
.source "SharedPreferenceStore.java"

# interfaces
.implements Lcom/heyzap/mediation/filters/Store;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heyzap/mediation/filters/Store",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/heyzap/mediation/filters/SharedPreferenceStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    iput-object p2, p0, Lcom/heyzap/mediation/filters/SharedPreferenceStore;->key:Ljava/lang/String;

    .line 17
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/filters/SharedPreferenceStore;->value:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/heyzap/mediation/filters/SharedPreferenceStore;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/heyzap/mediation/filters/SharedPreferenceStore;->value:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/filters/SharedPreferenceStore;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/heyzap/mediation/filters/SharedPreferenceStore;->value:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/heyzap/mediation/filters/SharedPreferenceStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/filters/SharedPreferenceStore;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    return-void
.end method
