.class public Lcom/urbanairship/preference/QuietTimeStartPreference;
.super Lcom/urbanairship/preference/QuietTimePickerPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/preference/QuietTimePickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/urbanairship/preference/UAPreference$PreferenceType;
    .locals 1

    sget-object v0, Lcom/urbanairship/preference/UAPreference$PreferenceType;->e:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/urbanairship/preference/QuietTimePickerPreference;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic b()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/urbanairship/preference/QuietTimePickerPreference;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Lcom/urbanairship/preference/QuietTimePickerPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDialogClosed(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/urbanairship/preference/QuietTimePickerPreference;->onDialogClosed(Z)V

    return-void
.end method
