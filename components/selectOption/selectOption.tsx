import {
  FormControl,
  FormControlLabel,
  FormLabel,
  Radio,
  RadioGroup,
  Typography,
} from "@mui/material";
import { NixType } from "../../models/nix";

interface SelectOptionProps {
  label: string;
  handleChange: (value: string) => void;
  value: string;

  options: {
    value: string;
    label: string;
  }[];
}

export const SelectOption = (props: SelectOptionProps) => {
  const { label, handleChange, options, value } = props;

  const _handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const newVal = (event.target as HTMLInputElement).value as NixType;
    handleChange(newVal);
  };

  return (
    <FormControl
      sx={{
        flexDirection: "row",
      }}
    >
      <FormLabel
        sx={{
          width: "7rem",
          wordWrap: "unset",
          margin: "auto",
          padding: 1,
        }}
      >
        <Typography sx={{ minWidth: "max-content" }}>{label}</Typography>
      </FormLabel>

      <RadioGroup
        sx={{
          width: "100%",
          "&.MuiFormGroup-root": {
            flexDirection: "row",
          },
        }}
        value={value}
        onChange={_handleChange}
      >
        {options.map(({ value, label }) => (
          <FormControlLabel
            key={value}
            value={value}
            control={<Radio />}
            label={label}
          />
        ))}
      </RadioGroup>
    </FormControl>
  );
};
