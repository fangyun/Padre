package Padre::Wx::FBP::Snippet;

## no critic

# This module was generated by Padre::Plugin::FormBuilder::Perl.
# To change this module edit the original .fbp file and regenerate.
# DO NOT MODIFY THIS FILE BY HAND!

use 5.008;
use strict;
use warnings;
use Padre::Wx ();
use Padre::Wx::Role::Main ();

our $VERSION = '0.91';
our @ISA     = qw{
	Padre::Wx::Role::Main
	Wx::Dialog
};

sub new {
	my $class  = shift;
	my $parent = shift;

	my $self = $class->SUPER::new(
		$parent,
		-1,
		Wx::gettext("Insert Snippet"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::wxDEFAULT_DIALOG_STYLE,
	);

	my $filter_label = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Filter") . ":",
	);

	$self->{filter} = Wx::Choice->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		[],
	);
	$self->{filter}->SetSelection(0);

	Wx::Event::EVT_CHOICE(
		$self,
		$self->{filter},
		sub {
			shift->refilter(@_);
		},
	);

	my $name_label = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Snippet") . ":",
	);

	$self->{select} = Wx::Choice->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		[],
	);
	$self->{select}->SetSelection(0);

	Wx::Event::EVT_CHOICE(
		$self,
		$self->{select},
		sub {
			shift->refresh(@_);
		},
	);

	my $m_staticline4 = Wx::StaticLine->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::wxLI_HORIZONTAL,
	);

	my $m_staticText11 = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Preview") . ":",
	);

	$self->{preview} = Wx::TextCtrl->new(
		$self,
		-1,
		"",
		Wx::DefaultPosition,
		[ 300, 200 ],
		Wx::wxTE_MULTILINE | Wx::wxTE_READONLY,
	);
	$self->{preview}->SetBackgroundColour(
		Wx::SystemSettings::GetColour( Wx::wxSYS_COLOUR_MENU )
	);

	my $m_staticline1 = Wx::StaticLine->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::wxLI_HORIZONTAL,
	);

	$self->{insert} = Wx::Button->new(
		$self,
		-1,
		Wx::gettext("Insert"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);
	$self->{insert}->SetDefault;

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{insert},
		sub {
			shift->insert_snippet(@_);
		},
	);

	$self->{cancel} = Wx::Button->new(
		$self,
		Wx::wxID_CANCEL,
		Wx::gettext("Cancel"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);

	my $fgSizer2 = Wx::FlexGridSizer->new( 2, 2, 0, 10 );
	$fgSizer2->AddGrowableCol(1);
	$fgSizer2->SetFlexibleDirection(Wx::wxBOTH);
	$fgSizer2->SetNonFlexibleGrowMode(Wx::wxFLEX_GROWMODE_SPECIFIED);
	$fgSizer2->Add( $filter_label, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer2->Add( $self->{filter}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer2->Add( $name_label, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer2->Add( $self->{select}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );

	my $buttons = Wx::BoxSizer->new(Wx::wxHORIZONTAL);
	$buttons->Add( $self->{insert}, 0, Wx::wxALL, 5 );
	$buttons->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$buttons->Add( $self->{cancel}, 0, Wx::wxALL, 5 );

	my $vsizer = Wx::BoxSizer->new(Wx::wxVERTICAL);
	$vsizer->Add( $fgSizer2, 1, Wx::wxEXPAND, 5 );
	$vsizer->Add( $m_staticline4, 0, Wx::wxEXPAND | Wx::wxALL, 5 );
	$vsizer->Add( $m_staticText11, 0, Wx::wxLEFT | Wx::wxTOP, 5 );
	$vsizer->Add( $self->{preview}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$vsizer->Add( $m_staticline1, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$vsizer->Add( $buttons, 0, Wx::wxEXPAND, 5 );

	my $sizer = Wx::BoxSizer->new(Wx::wxHORIZONTAL);
	$sizer->Add( $vsizer, 1, Wx::wxALL | Wx::wxEXPAND, 5 );

	$self->SetSizerAndFit($sizer);
	$self->Layout;

	return $self;
}

sub filter {
	$_[0]->{filter};
}

sub select {
	$_[0]->{select};
}

sub preview {
	$_[0]->{preview};
}

sub insert {
	$_[0]->{insert};
}

sub cancel {
	$_[0]->{cancel};
}

sub refilter {
	$_[0]->main->error('Handler method refilter for event filter.OnChoice not implemented');
}

sub refresh {
	$_[0]->main->error('Handler method refresh for event select.OnChoice not implemented');
}

sub insert_snippet {
	$_[0]->main->error('Handler method insert_snippet for event insert.OnButtonClick not implemented');
}

1;

# Copyright 2008-2011 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.

