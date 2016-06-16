.class Lcom/urbanairship/preference/UAPreferenceAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/urbanairship/preference/UAPreference;

.field final synthetic b:Lcom/urbanairship/preference/UAPreferenceAdapter;


# direct methods
.method constructor <init>(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter$1;->b:Lcom/urbanairship/preference/UAPreferenceAdapter;

    iput-object p2, p0, Lcom/urbanairship/preference/UAPreferenceAdapter$1;->a:Lcom/urbanairship/preference/UAPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter$1;->b:Lcom/urbanairship/preference/UAPreferenceAdapter;

    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter$1;->a:Lcom/urbanairship/preference/UAPreference;

    invoke-static {v0, v1}, Lcom/urbanairship/preference/UAPreferenceAdapter;->a(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference;)V

    return-void
.end method
